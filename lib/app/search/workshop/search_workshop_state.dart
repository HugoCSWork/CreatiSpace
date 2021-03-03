part of 'search_workshop_bloc.dart';

@freezed
abstract class SearchWorkshopState with _$SearchWorkshopState {
  const factory SearchWorkshopState.initial() = _Initial;
  const factory SearchWorkshopState.loadInProgress() = _LoadInProgress;
  const factory SearchWorkshopState.loadSuccess(KtList<Workshop> items) = _LoadSuccess;
  const factory SearchWorkshopState.loadFailure(WorkshopErrorFailures itemFailure) = _LoadFailure;
}
