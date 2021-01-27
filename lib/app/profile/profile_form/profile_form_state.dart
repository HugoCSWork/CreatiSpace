part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormState with _$ProfileFormState {

  const factory ProfileFormState({
    @required UserProfileData item,
    @required AutovalidateMode showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<ProfileErrorFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProfileFormState;


  factory ProfileFormState.initial() => ProfileFormState(
    item: UserProfileData.empty(),
    showErrorMessages: AutovalidateMode.disabled,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
