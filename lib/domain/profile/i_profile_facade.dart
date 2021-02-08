import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileFacade {
  Stream<Either<ProfileErrorFailure, UserProfileData>> getUserData();
  Stream<Either<ProfileErrorFailure, PeerProfileData>> getPeerData(String id);
  Future<Either<ProfileErrorFailure, Unit>> update(UserProfileData item);
  Future<Either<ProfileErrorFailure, Unit>> unfollow(String id);
  Future<Either<ProfileErrorFailure, Unit>> follow(String id);
}