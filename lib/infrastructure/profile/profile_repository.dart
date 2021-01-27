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
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IProfileFacade)
class ProfileRepository implements IProfileFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;

  ProfileRepository(
      this._firebaseFirestore, this._firebaseStorage, this._firebaseAuth);

  @override
  Stream<Either<ProfileErrorFailure, UserProfileData>> getUserData() async* {
    try {
      DocumentReference userDoc = await _firebaseFirestore.userDocument();
      var userPhoto = _firebaseAuth.currentUser.photoURL ?? "template";
      UserProfileData dto = await UserProfileDto.fromFirestore(await userDoc.get(), userPhoto).toDomain();
      yield right(dto);
    } catch (error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        yield left(const ProfileErrorFailure.insufficientPermissions());
      } else {
        yield left(const ProfileErrorFailure.unexpected());
      }
    }

  }

}
