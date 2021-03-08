import 'package:creatispace/app/auth/payment_verified/payment_verified_bloc.dart';
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
    final prevOrPay = useState(false);
    final cost = useState(0.00);
    final delivery = useState(0.00);
    final quantity = useState(0);

    return BlocListener<ItemFormBloc, ItemFormState>(
        listenWhen: (prev, current) => prev.isEditing != current.isEditing,
        listener: (context, state) {
          prevOrPay.value = state.item.purchasable.getOrCrash();
          cost.value = state.item.price.getOrCrash();
          delivery.value = state.item.delivery.getOrCrash();
          quantity.value = state.item.quantity.getOrCrash();
        },
        child: BlocBuilder<PaymentVerifiedBloc, PaymentVerifiedState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                authenticated: (_) {
                  return Column(
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
                        PaymentFields(delivery: delivery.value, price: cost.value, quantity: quantity.value,),
                    ],
                  );
                },
                unauthenticated: (_) {
                  context.watch<ItemFormBloc>().add(const ItemFormEvent.deliveryChanged(0.00));
                  context.watch<ItemFormBloc>().add(const ItemFormEvent.priceChanged(0.00));
                  context.watch<ItemFormBloc>().add(const ItemFormEvent.quantityChanged(0));
                  return Column(
                    children: [
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Purchasable"),
                          value: false,
                          onChanged: null,
                      ),
                      const SizedBox(height: 20),
                      Text("You Must be a seller to to sell items", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                    ],
                  );
                }
            );
          },
        )
    );
  }
}


// Column(
// children: [
// CheckboxListTile(
// controlAffinity: ListTileControlAffinity.leading,
// title: const Text("Purchasable"),
// value: prevOrPay.value,
// onChanged: (bool value) {
// prevOrPay.value = value;
// context.read<ItemFormBloc>().add(ItemFormEvent.purchasableChanged(prevOrPay.value));
// if (prevOrPay.value == false) {
// context.read<ItemFormBloc>().add(const ItemFormEvent.deliveryChanged(0.00));
// context.read<ItemFormBloc>().add(const ItemFormEvent.priceChanged(0.00));
// context.read<ItemFormBloc>().add(const ItemFormEvent.quantityChanged(0));
// }
// }),
// const SizedBox(height: 20),
// if (prevOrPay.value)
// PaymentFields(),
// ],
// )