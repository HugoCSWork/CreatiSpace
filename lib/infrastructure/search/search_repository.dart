

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/search/i_search_facade.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/items/home_item_dtos.dart';
import 'package:creatispace/infrastructure/profile/profile_dtos.dart';
import 'package:creatispace/infrastructure/workshop/workshop_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ISearchFacade)
class SearchRepository implements ISearchFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  SearchRepository(this._firebaseFirestore, this._firebaseAuth);

  @override
  Stream<Either<ItemErrorFailure, KtList<HomeItem>>> searchForItems(String search) async* {
    var userDoc= await _firebaseFirestore.userDocument();

    yield* _firebaseFirestore.collection('posts')
        .snapshots()
        .map(
          (snapshot) =>
          snapshot.docs.map((doc) => HomeItemDto.fromFirestore(doc).toDomain()),
    )
        .map(
          (item) => right<ItemErrorFailure, KtList<HomeItem>>(
          item
              .where((item) => item.name.getOrCrash().toLowerCase().contains(search.toLowerCase()) || item.description.getOrCrash().toLowerCase().contains(search.toLowerCase()))
              .where((item) => item.id != userDoc.id)
              .toImmutableList()
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        return left(const ItemErrorFailure.insufficientPermissions());
      } else {
        return left(const ItemErrorFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> searchForUsers(String search) async* {
    var loggedInUsername = await _firebaseFirestore.userDocumentName(_firebaseAuth.currentUser.uid);
    yield* _firebaseFirestore.collection('users')
        .snapshots()
        .map(
        (snapshot) =>
            snapshot.docs.map((doc) => UserProfileDto.fromFirestore(doc).toDomain()),
        )
        .map(
            (user) => right<ItemErrorFailure, KtList<UserProfileData>>(
              user
                  .where((user) => user.username.getOrCrash().toLowerCase().contains(search.toLowerCase()))
                  .where((user) => !user.username.getOrCrash().toLowerCase().contains(loggedInUsername.toLowerCase()))
                  .toImmutableList()
            ),
        ).onErrorReturnWith((error) {
        if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
          return left(const ItemErrorFailure.insufficientPermissions());
        } else {
          return left(const ItemErrorFailure.unexpected());
        }
      });
  }

  @override
  Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> searchForWorkshops(String search) async* {
    var currentUser = await _firebaseFirestore.userDocument();
    await _firebaseFirestore.waitForPendingWrites();
    yield* _firebaseFirestore.collection('workshops')
        .snapshots()
        .map(
          (snapshot) =>
          snapshot.docs.map((doc) => WorkshopDto.fromFirestore(doc).toDomain()),
    )
        .map(
          (user) => right<WorkshopErrorFailures,  KtList<Workshop>>(
          user
              .where((user) => user.workshopName.getOrCrash().toLowerCase().contains(search.toLowerCase()) || user.workshopDescription.getOrCrash().toLowerCase().contains(search.toLowerCase()))
              .where((user) => !user.userId.contains(currentUser.id))
              .toImmutableList()
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        return left(const WorkshopErrorFailures.insufficientPermissions());
      } else {
        return left(const WorkshopErrorFailures.unexpected());
      }
    });

  }
}