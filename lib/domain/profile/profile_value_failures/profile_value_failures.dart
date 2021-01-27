import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_value_failures.freezed.dart';

@freezed
abstract class ProfileValueFailure<T> with _$ProfileValueFailure<T> {
  const factory ProfileValueFailure.invalidProfileName({@required String failedValue}) =
  InvalidProfileName<T>;

  const factory ProfileValueFailure.invalidProfileDescription({@required String failedValue}) =
  InvalidProfileDescription<T>;

  const factory ProfileValueFailure.invalidProfileFollowing({@required int failedValue}) =
  InvalidProfileFollowing<T>;

  const factory ProfileValueFailure.invalidProfileFollowers({@required int failedValue}) =
  InvalidProfileFollowers<T>;

  const factory ProfileValueFailure.invalidBackgroundImageUrl({@required String failedValue}) =
  InvalidBackgroundImageUrl<T>;

  const factory ProfileValueFailure.invalidProfileImageUrl({@required String failedValue}) =
  InvalidProfileImageUrl<T>;
}
