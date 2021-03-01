part of 'workshop_form_bloc.dart';

@freezed
abstract class WorkshopFormState with _$WorkshopFormState {
  const factory WorkshopFormState({
    @required Workshop item,
    @required AutovalidateMode showErrorMessages,
    @required bool isSaving,
    @required Option<Either<WorkshopErrorFailures, Unit>> saveFailureOrSuccessOption,
  }) = _WorkshopFormState;


  factory WorkshopFormState.initial() => WorkshopFormState(
    item: Workshop.empty(),
    showErrorMessages: AutovalidateMode.disabled,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
