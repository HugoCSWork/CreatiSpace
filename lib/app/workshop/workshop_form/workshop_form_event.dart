part of 'workshop_form_bloc.dart';

@freezed
abstract class WorkshopFormEvent with _$WorkshopFormEvent {
  const factory WorkshopFormEvent.nameChanged(String name) = _NameChanged;
  const factory WorkshopFormEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory WorkshopFormEvent.dateChanged(String date) = _DateChanged;
  const factory WorkshopFormEvent.priceChanged(double price) = _PriceChanged;
  const factory WorkshopFormEvent.durationChanged(double duration) = _DurationChanged;
  const factory WorkshopFormEvent.requirementsChanged(String requirements) = _RequirementsChanged;
  const factory WorkshopFormEvent.saved() = _Saved;
}