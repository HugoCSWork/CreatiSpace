

import 'package:flutter/material.dart';

Widget moreInfoName(String name) {
  return Container(
      padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
      alignment: Alignment.centerLeft,
      child: Text(
        name,
        style: TextStyle(
            fontSize: 20
        ),
      )
  );
}


Widget moreInfoPurchasable(bool purchasable, int quantity, double price) {
  return  Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Text(
      purchasable
          ? quantity > 0
          ? '£${price.toStringAsFixed(2)}'
          : 'Out of stock'
          : 'Non-Purchasable',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16
      ),
    ),
  );
}

Widget moreInfoDescription(String description) {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
    alignment: Alignment.centerLeft,
    child: Text(
        description
    ),
  );
}

Widget moreInfoDelivery(int quantity, double delivery) {
  return quantity > 0
      ? Container(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
      child: Text("Delivery - £${delivery.toStringAsFixed(2)}", style: TextStyle(
          fontWeight: FontWeight.bold
      ),),
    ),
  )
      : Container();
}

Widget moreInfoDeliveryDuration(int quantity) {
  return  quantity > 0
      ? Container(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
      child: Text("(3 to 5 working days)", style: TextStyle(
          fontWeight: FontWeight.bold
      ),),
    ),
  )
      : Container();
}