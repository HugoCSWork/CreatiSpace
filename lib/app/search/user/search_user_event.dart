part of 'search_user_bloc.dart';

@freezed
abstract class SearchUserEvent with _$SearchUserEvent {
  const factory SearchUserEvent.initialized() =
  _Initialized;
  const factory SearchUserEvent.search(String search) = _Search;
  const factory SearchUserEvent.searchReceived(Either<ItemErrorFailure, KtList<UserProfileData>> searchOrFailure)
  = _SearchReceived;

}