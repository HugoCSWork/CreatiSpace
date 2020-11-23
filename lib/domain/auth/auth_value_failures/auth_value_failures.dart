import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_value_failures.freezed.dart';

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({@required String failedValue}) =
      InvalidEmail<T>;

  const factory AuthValueFailure.invalidPassword({@required String failedValue}) =
      InvalidPassword<T>;

  const factory AuthValueFailure.shortUsername({@required String failedValue}) =
      ShortUsername<T>;
  const factory AuthValueFailure.offensiveUsername({@required String failedValue}) =
      OffensiveUsername<T>;
}