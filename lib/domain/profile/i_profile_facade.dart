import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IProfileFacade {
  Stream<Either<ProfileErrorFailure, UserProfileData>> getUserData();
}