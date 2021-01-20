import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_value_failures.freezed.dart';

@freezed
abstract class UserValueFailure<T> with _$UserValueFailure<T> {
  const factory UserValueFailure.invalidName({@required String failedValue}) =
      InvalidName<T>;

}