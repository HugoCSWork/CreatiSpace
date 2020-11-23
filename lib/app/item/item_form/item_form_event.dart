part of 'item_form_bloc.dart';

@freezed
abstract class ItemFormEvent with _$ItemFormEvent {
  const factory ItemFormEvent.initialized(Option<Item> initialItemOption) =
      _Initialized;
  const factory ItemFormEvent.nameChanged(String name) = _NameChanged;
  const factory ItemFormEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory ItemFormEvent.priceChanged(double price) = _PriceChanged;
  const factory ItemFormEvent.deliveryChanged(double delivery) = _DeliveryChanged;
  const factory ItemFormEvent.quantityChanged(int quantity) = _QuantityChanged;
  const factory ItemFormEvent.purchasableChanged(bool purchasable) = _PurchasableChanged;
  const factory ItemFormEvent.itemsChanged(KtList<ImageItemPrimitive> items) =
      _ItemsChanged;
  const factory ItemFormEvent.saved() = _Saved;
}
