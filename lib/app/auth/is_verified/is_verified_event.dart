part of 'is_verified_bloc.dart';

@freezed
abstract class IsVerifiedEvent with _$IsVerifiedEvent {
  const factory IsVerifiedEvent.verifiedCheckRequested() = VerifiedCheckRequested;

}