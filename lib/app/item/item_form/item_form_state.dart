
part of 'item_form_bloc.dart';


@freezed
abstract class ItemFormState with _$ItemFormState {
  const factory ItemFormState({
    @required Item item,
    @required AutovalidateMode showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<ItemErrorFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ItemFormState;


  factory ItemFormState.initial() => ItemFormState(
    item: Item.empty(), 
    showErrorMessages: AutovalidateMode.disabled, 
    isEditing: false, 
    isSaving: false, 
    saveFailureOrSuccessOption: none(),
  );
}
