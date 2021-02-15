import 'package:creatispace/pages/items/items_form/widgets/payment/item_delivery_field.dart';
import 'package:creatispace/pages/items/items_form/widgets/payment/item_price_field.dart';
import 'package:creatispace/pages/items/items_form/widgets/payment/item_quantity_field.dart';
import 'package:flutter/cupertino.dart';

class PaymentFields extends StatelessWidget {

  final double price;
  final double delivery;
  final int quantity;

  const PaymentFields({Key key, this.price, this.delivery, this.quantity}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            ItemPriceField(price),
            ItemDeliveryField(delivery),
            ItemQuantityField(quantity),
        ],
    );
  }
}