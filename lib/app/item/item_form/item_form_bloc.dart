

import 'package:creatispace/domain/items/i_item_facade.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/pages/items/items_form/misc/todo_item_presentation_classes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'item_form_bloc.freezed.dart';
part 'item_form_event.dart';
part 'item_form_state.dart';

@injectable
class ItemFormBloc extends Bloc<ItemFormEvent, ItemFormState> {
  final IItemFacade _itemRepository;

  ItemFormBloc(this._itemRepository) : super(ItemFormState.initial());

  @override
  Stream<ItemFormState> mapEventToState(
    ItemFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialItemOption.fold(
          () => state,
          (initialItem) => state.copyWith(
            item: initialItem,
            isEditing: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(name: ItemName(e.name)),
          saveFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(description: ItemDescription(e.description)),
          saveFailureOrSuccessOption: none(),
        );
      },
      priceChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(price: ItemPrice(e.price)),
          saveFailureOrSuccessOption: none(),
        );
      },
      deliveryChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(delivery: ItemDeliveryFee(e.delivery)),
          saveFailureOrSuccessOption: none(),
        );
      },
      quantityChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(quantity: ItemQuantity(e.quantity)),
          saveFailureOrSuccessOption: none(),
        );
      },
      purchasableChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(purchasable: ItemPurchasable(e.purchasable)),
          saveFailureOrSuccessOption: none(),
        );
      },
      itemsChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(
            images: ItemImageList(e.items.map((primitive) => primitive.toDomain())),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ItemErrorFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.item.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _itemRepository.update(state.item)
              : await _itemRepository.create(state.item);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
