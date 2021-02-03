
import 'package:freezed_annotation/freezed_annotation.dart';

part 'following_follower_error_failures.freezed.dart';

@freezed
abstract class FollowingFollowerErrorFailure with _$FollowingFollowerErrorFailure {
  const factory FollowingFollowerErrorFailure.unexpected() = Unexpected;
  const factory FollowingFollowerErrorFailure.insufficientPermissions() = InsufficientPermissions;
  const factory FollowingFollowerErrorFailure.notFound() = NotFound;
}
