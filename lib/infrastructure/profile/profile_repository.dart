import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/profile/i_profile_facade.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/profile/profile_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mime/mime.dart';

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
}

