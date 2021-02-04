part of 'search_item_bloc.dart';

@freezed
abstract class SearchItemState with _$SearchItemState {
  const factory SearchItemState.initial() = _Initial;
  const factory SearchItemState.loadInProgress() = _LoadInProgress;
  const factory SearchItemState.loadSuccess(KtList<HomeItem> items) = _LoadSuccess;
  const factory SearchItemState.loadFailure(ItemErrorFailure itemFailure) = _LoadFailure;
}
