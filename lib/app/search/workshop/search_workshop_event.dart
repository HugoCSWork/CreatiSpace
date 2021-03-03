part of 'search_workshop_bloc.dart';

@freezed
abstract class SearchWorkshopEvent with _$SearchWorkshopEvent {
  const factory SearchWorkshopEvent.search(String search) = _Search;
  const factory SearchWorkshopEvent.searchReceived(Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure)
  = _SearchReceived;
}