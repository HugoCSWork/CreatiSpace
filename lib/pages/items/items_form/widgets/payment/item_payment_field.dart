import 'package:creatispace/pages/items/items_form/widgets/payment/item_delivery_field.dart';
import 'package:creatispace/pages/items/items_form/widgets/payment/item_price_field.dart';
import 'package:creatispace/pages/items/items_form/widgets/payment/item_quantity_field.dart';
import 'package:flutter/cupertino.dart';

class PaymentFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [
            ItemPriceField(),
            ItemDeliveryField(),
            ItemQuantityField(),
        ],
    );
  }
}