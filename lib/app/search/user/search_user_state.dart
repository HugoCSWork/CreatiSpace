part of 'search_user_bloc.dart';

@freezed
abstract class SearchUserState with _$SearchUserState {
  const factory SearchUserState.initial() = _Initial;
  const factory SearchUserState.loadInProgress() = _LoadInProgress;
  const factory SearchUserState.loadSuccess(KtList<UserProfileData> items) = _LoadSuccess;
  const factory SearchUserState.loadFailure(ItemErrorFailure itemFailure) = _LoadFailure;

}
