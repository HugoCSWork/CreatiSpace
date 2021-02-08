import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/profile/i_profile_facade.dart';
import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/following_followers/following_followers_dtos.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:creatispace/infrastructure/profile/peer_profile_dtos.dart';
import 'package:creatispace/infrastructure/profile/profile_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IProfileFacade)
class ProfileRepository implements IProfileFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;

  ProfileRepository(this._firebaseFirestore, this._firebaseStorage,
      this._firebaseAuth);

  @override
  Stream<Either<ProfileErrorFailure, UserProfileData>> getUserData() async* {
    try {
      DocumentReference userDoc = await _firebaseFirestore.userDocument();
      UserProfileData dto = await UserProfileDto.fromFirestore(
          await userDoc.get()).toDomain();
      yield right(dto);
    } catch (error) {
      if (error is FirebaseException &&
          error.message.contains('PERMISSION_DENIED')) {
        yield left(const ProfileErrorFailure.insufficientPermissions());
      } else {
        yield left(const ProfileErrorFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ProfileErrorFailure, PeerProfileData>> getPeerData(String id) async* {
    DocumentReference peerDoc = await _firebaseFirestore.collection('users').doc(id);
    var userId = await _firebaseAuth.currentUser.uid;
    var followingRef = await _firebaseFirestore.collection('users').doc(userId).collection('following').doc(id).get();

    try {
      PeerProfileData dto = await PeerProfileDto.fromFirestore(
          await peerDoc.get(), followingRef.exists ? true : false).toDomain();
      yield right(dto);
    } catch (error) {
      if (error is FirebaseException &&
          error.message.contains('PERMISSION_DENIED')) {
        yield left(const ProfileErrorFailure.insufficientPermissions());
      } else {
        yield left(const ProfileErrorFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProfileErrorFailure, Unit>> update(UserProfileData item) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      String backgroundUrl;
      String profileUrl;
      if(!item.profileImageURL.getOrCrash().startsWith('https://firebasestorage.googleapis.com')) {
        final userProfileImage = _firebaseStorage
            .ref()
            .child("user_profile/${userDoc.id}/profile_image");

        await userProfileImage.putFile(File(item.profileImageURL.getOrCrash()));

        profileUrl = await FirebaseStorage.instance
            .ref()
            .child("user_profile/${userDoc.id}/profile_image")
            .getDownloadURL();
      }

      if(!item.backgroundImageURL.getOrCrash().startsWith('https://firebasestorage.googleapis.com')) {
        final userBackgroundImage = _firebaseStorage
            .ref()
            .child("user_profile/${userDoc.id}/background_image");

        await userBackgroundImage.putFile(
            File(item.backgroundImageURL.getOrCrash()));

        backgroundUrl = await FirebaseStorage.instance
            .ref()
            .child("user_profile/${userDoc.id}/background_image")
            .getDownloadURL();
      }
      // update username, description,
      final itemDto = UserProfileDto.fromDomainUpdate(item, backgroundUrl, profileUrl);
      await userDoc.update(itemDto.toJson());

      return right(unit);
    }
    on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileErrorFailure.insufficientPermissions());
      } else {
        return left(const ProfileErrorFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProfileErrorFailure, Unit>> follow(String id) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final peerDoc = await _firebaseFirestore.collection('users').doc(id);
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

      // for loop over following user and add all posts to home page
      FollowingFollowers userFollowing = new FollowingFollowers(
          id: id,
          username:  await _firebaseFirestore.userDocumentName(id),
          profileImageURL: await _firebaseFirestore.userDocumentProfileImage(id));

      FollowingFollowers peerFollower = new FollowingFollowers(
          id: userDoc.id,
          username:  await _firebaseFirestore.userDocumentName(userDoc.id),
          profileImageURL: await _firebaseFirestore.userDocumentProfileImage(userDoc.id));

      final followingFollowersDto = FollowingFollowerDto.fromDomain(userFollowing);
      final peerFollowingFollowersDto = FollowingFollowerDto.fromDomain(peerFollower);

      userDoc.UserFollowingCollection.doc(id).set(followingFollowersDto.toJson());
      peerDoc.UserFollowersCollection.doc(userDoc.id).set(peerFollowingFollowersDto.toJson());

      QuerySnapshot snap = await peerDoc.collection('items').get();

      await snap.docs.forEach((document) async {
        await userDoc.homeItemCollection.doc(timestamp).set(document.data());
      });

      // add one following to user
      var userFollowingCount = await _firebaseFirestore.getFollowing(userDoc.id) + 1;
      var peerFollowersCount = await _firebaseFirestore.getFollowers(id) + 1;
      await userDoc.update({
      "following" : userFollowingCount
      });
      await peerDoc.update({
        "followers" : peerFollowersCount
      });
      // add one follower to peer
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
      return left(const ProfileErrorFailure.insufficientPermissions());
      } else {
      return left(const ProfileErrorFailure.unexpected());
      }
    }


  }

  @override
  Future<Either<ProfileErrorFailure, Unit>> unfollow(String id) async {
    try {

      final userDoc = await _firebaseFirestore.userDocument();
      final peerDoc = await _firebaseFirestore.collection('users').doc(id);
      await userDoc.UserFollowingCollection.doc(id).delete();
      await peerDoc.UserFollowersCollection.doc(userDoc.id).delete();

      QuerySnapshot snap = await userDoc.collection('home').get();

      await snap.docs.forEach((document) async {
        if(document["id"] == id) {
          await userDoc.homeItemCollection.doc(document.id).delete();
        }
      });

      var userFollowingCount = await _firebaseFirestore.getFollowing(userDoc.id) - 1;
      var peerFollowersCount = await _firebaseFirestore.getFollowers(id) - 1;
      await userDoc.update({
        "following" : userFollowingCount
      });
      await peerDoc.update({
        "followers" : peerFollowersCount
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileErrorFailure.insufficientPermissions());
      } else {
        return left(const ProfileErrorFailure.unexpected());
      }
    }

  }
}

