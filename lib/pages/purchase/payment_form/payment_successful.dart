import 'package:creatispace/app/payment_confirmation/payment_confirmation_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentSuccessful extends StatelessWidget {
  final String amount;
  final String quantity;
  final String itemId;
  final String peerId;
  final Map<String, dynamic> address;


  const PaymentSuccessful({Key key, this.amount, this.quantity, this.itemId,
    this.address, this.peerId }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentConfirmationBloc>()
        ..add(PaymentConfirmationEvent.getPaymentItemStarted(itemId, peerId)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Order Confirmation"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //image
              BlocBuilder<PaymentConfirmationBloc, PaymentConfirmationState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => Center(child: CircularProgressIndicator()),
                      loadSuccess: (state) => SingleChildScrollView(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Thank you for your order, you will receive an email confirmation shortly.",
                                    style: TextStyle(
                                      fontSize: 18
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                                      child: Text(
                                        "Order Information",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                        ),
                                      )
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue: state.item.name,
                                      decoration: const InputDecoration(
                                          labelText: 'Product Name',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding:
                                          const EdgeInsets.symmetric(vertical: 8.0),
                                          margin: const EdgeInsets.only(
                                              left: 16, top: 8, right: 16),
                                          child: TextFormField(
                                            initialValue:
                                            quantity.toString(),
                                            decoration: const InputDecoration(
                                                labelText: 'Quantity',
                                                filled: true,
                                                errorMaxLines: 5),
                                            readOnly: true,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding:
                                          const EdgeInsets.symmetric(vertical: 8.0),
                                          margin: const EdgeInsets.only(
                                              left: 16, top: 8, right: 16),
                                          child: TextFormField(
                                            initialValue:
                                            '£${(state.item.price * int.parse(quantity)).toStringAsFixed(2)}',
                                            decoration: const InputDecoration(
                                                labelText: 'Price',
                                                filled: true,
                                                errorMaxLines: 5),
                                            readOnly: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      '£${state.item.delivery.toStringAsFixed(2)}',
                                      decoration: const InputDecoration(
                                          labelText: 'Delivery',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                Container(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      '£${(double.parse(amount) / 100).toStringAsFixed(2)}',
                                      decoration: const InputDecoration(
                                          labelText: 'Total Cost',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                                      child: Text(
                                        "Delivery Information",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                        ),
                                      )
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding:
                                          const EdgeInsets.symmetric(vertical: 8.0),
                                          margin: const EdgeInsets.only(
                                              left: 16, top: 8, right: 16),
                                          child: TextFormField(
                                            initialValue:
                                            address["house_number"] as String,
                                            decoration: const InputDecoration(
                                                labelText: 'House Number',
                                                filled: true,
                                                errorMaxLines: 5),
                                            readOnly: true,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding:
                                          const EdgeInsets.symmetric(vertical: 8.0),
                                          margin: const EdgeInsets.only(
                                              left: 16, top: 8, right: 16),
                                          child: TextFormField(
                                            initialValue:
                                            address["postcode"] as String,
                                            decoration: const InputDecoration(
                                                labelText: 'Postcode',
                                                filled: true,
                                                errorMaxLines: 5),
                                            readOnly: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      address["line_1"] as String,
                                      decoration: const InputDecoration(
                                          labelText: 'Line One',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      address["line_2"] as String,
                                      decoration: const InputDecoration(
                                          labelText: 'Line Two',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      address["country"] as String,
                                      decoration: const InputDecoration(
                                          labelText: 'Country',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      address["city"] as String,
                                      decoration: const InputDecoration(
                                          labelText: 'City',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    margin: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16),
                                    child: TextFormField(
                                      initialValue:
                                      address["county"] as String,
                                      decoration: const InputDecoration(
                                          labelText: 'County',
                                          filled: true,
                                          errorMaxLines: 5),
                                      readOnly: true,
                                    ),
                                  ),
                                  SizedBox(height: 16)
                                ],
                              )
                            ),
                          )
                      ),
                      loadFailure: (_) =>  Container(),
                    );
                  },
              )
            ],
          ),
        ),
      ),


    );
  }
}
