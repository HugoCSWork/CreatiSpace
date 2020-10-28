
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_error_failures.freezed.dart';

@freezed
abstract class AuthErrorFailure with _$AuthErrorFailure {
  const factory AuthErrorFailure.cancelledByUser() = CancelledByUser;
  const factory AuthErrorFailure.serviceError() = ServerError;
  const factory AuthErrorFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthErrorFailure.invalidEmailAndPassword() = InvalidEmailAndPassword;
}
