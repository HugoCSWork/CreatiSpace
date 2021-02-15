import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemQuantityField extends HookWidget {
  final int quantity;

  const ItemQuantityField(this.quantity, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    textEditingController.text = quantity.toString();

    return BlocListener<ItemFormBloc, ItemFormState>(
      listenWhen: (prev, current) => prev.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.item.quantity.getOrCrash().toString();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Quantity',
            alignLabelWithHint: true,
            counterText: '',
          ),
          maxLength: 10,
          onChanged: (value) => context
              .read<ItemFormBloc>()
              .add(ItemFormEvent.quantityChanged(int.parse(value))),
          validator: (_) =>
              context.read<ItemFormBloc>().state.item.description.value.fold(
                  (failure) => failure.maybeMap(
                        item: (value) => value.i.maybeMap(
                          empty: (_) => 'Value Cannot be Empty',
                          invalidQuantity: (_) =>
                              'Invalid Quantity cannot exceed 10000 items',
                          orElse: () => null,
                        ),
                        orElse: () => null,
                      ),
                  (_) => null),
        ),
      ),
    );
  }
}
