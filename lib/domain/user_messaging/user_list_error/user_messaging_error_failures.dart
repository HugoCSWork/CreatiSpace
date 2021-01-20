import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_messaging_error_failures.freezed.dart';

@freezed
abstract class UserErrorFailure with _$UserErrorFailure {
  const factory UserErrorFailure.unexpected() = Unexpected;
  const factory UserErrorFailure.insufficientPermissions() = InsufficientPermissions;
  const factory UserErrorFailure.notFound() = NotFound;
}