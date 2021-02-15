part of 'is_verified_bloc.dart';

@freezed
abstract class IsVerifiedState with _$IsVerifiedState {
  const factory IsVerifiedState.initial() = Initial;
  const factory IsVerifiedState.authenticated() = Authenticated;
  const factory IsVerifiedState.unauthenticated() = Unauthenticated;
}
