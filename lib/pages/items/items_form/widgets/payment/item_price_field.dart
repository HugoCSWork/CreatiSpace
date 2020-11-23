import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemPriceField extends HookWidget {
  const ItemPriceField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ItemFormBloc, ItemFormState>(
      listenWhen: (prev, current) => prev.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.item.price.getOrCrash().toString();
      },
      child: Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        inputFormatters: [CurrencyTextInputFormatter(symbol: '£')],
        decoration: const InputDecoration(
          labelText: 'Cost',
          alignLabelWithHint: true,
          counterText: '',
        ),
        maxLength: 10,
        onChanged: (value) => context.read<ItemFormBloc>().add(ItemFormEvent.priceChanged(double.parse(value.substring(1, value.length)))),
        validator: (_) => context.read<ItemFormBloc>()
          .state.item.description.value
          .fold(
            (failure) => failure.maybeMap(
              item: (value) => value.i.maybeMap(
                empty: (_) => 'Value Cannot be Empty',
                invalidPrice: (_) => 'Invalid Price cannot exceed £99,999,99',
                orElse: () => null,
              ),
              orElse: () => null,
            ), 
            (_) => null
          ),
      ),
    ),
    );
  }
}
