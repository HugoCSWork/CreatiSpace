import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:creatispace/pages/items/items_form/widgets/payment/item_payment_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PreviewOrPay extends HookWidget {
  const PreviewOrPay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prevOrPay = useState(true);

    return BlocListener<ItemFormBloc, ItemFormState>(
        listenWhen: (prev, current) => prev.isEditing != current.isEditing,
        listener: (context, state) {
          prevOrPay.value = state.item.purchasable.getOrCrash();
        },
        child: Column(
          children: [
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("Purchasable"),
                value: prevOrPay.value,
                onChanged: (bool value) {
                  prevOrPay.value = value;
                  context.read<ItemFormBloc>().add(ItemFormEvent.purchasableChanged(prevOrPay.value));
                  if (prevOrPay.value == false) {
                    context.read<ItemFormBloc>().add(const ItemFormEvent.deliveryChanged(0.00));
                    context.read<ItemFormBloc>().add(const ItemFormEvent.priceChanged(0.00));
                    context.read<ItemFormBloc>().add(const ItemFormEvent.quantityChanged(0));
                  }
                }),
            const SizedBox(height: 20),
            if (prevOrPay.value)
               PaymentFields(),
          ],
        )
    );
  }
}
