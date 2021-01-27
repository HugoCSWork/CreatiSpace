import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_error_failures.freezed.dart';

@freezed
abstract class ProfileErrorFailure with _$ProfileErrorFailure {
  const factory ProfileErrorFailure.unexpected() = Unexpected;
  const factory ProfileErrorFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ProfileErrorFailure.notFound() = NotFound;
}
