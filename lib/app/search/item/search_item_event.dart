part of 'search_item_bloc.dart';

@freezed
abstract class SearchItemEvent with _$SearchItemEvent {
  const factory SearchItemEvent.initialized() =
  _Initialized;
  const factory SearchItemEvent.search(String search) = _Search;
  const factory SearchItemEvent.searchReceived(Either<ItemErrorFailure, KtList<HomeItem>> searchOrFailure)
  = _SearchReceived;
}