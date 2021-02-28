import 'package:creatispace/app/payment_details/payment_item_details/payment_item_details_bloc.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailsInformationOLD extends StatelessWidget {
  final PaymentDetails paymentDetails;

  const PaymentDetailsInformationOLD({Key key, this.paymentDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PaymentItemDetailsBloc>()
          ..add(PaymentItemDetailsEvent.getPaymentItemStarted(
              paymentDetails.userId, paymentDetails.itemId)),
        child: BlocBuilder<PaymentItemDetailsBloc, PaymentItemDetailsState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 200,
                    child: const Center(child: CircularProgressIndicator())),
                loadSuccess: (results) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text("Order Details"),
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                              initialValue: paymentDetails.id.toString(),
                              decoration: const InputDecoration(
                                  labelText: 'Order ID',
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
                                        paymentDetails.deliveryStatus,
                                    decoration: const InputDecoration(
                                        labelText: 'Status',
                                        filled: true,
                                        errorMaxLines: 5),
                                    readOnly: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                              child: Text(
                                  "Item Information",
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
                              initialValue: results.item.name,
                              decoration: InputDecoration(
                                  labelText: 'Item Name',
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
                                        paymentDetails.quantity.toString(),
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
                                        '£${((paymentDetails.amount / int.parse(paymentDetails.quantity)) / 100).toStringAsFixed(2)}',
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
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            margin: const EdgeInsets.only(
                                left: 16, top: 8, right: 16),
                            child: TextFormField(
                              initialValue:
                                  '£${(paymentDetails.amount / 100).toStringAsFixed(2)}',
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
                                        paymentDetails.shipping["house_number"] as String,
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
                                    paymentDetails.shipping["postcode"] as String,
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
                                  paymentDetails.shipping["line_1"] as String,
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
                                  paymentDetails.shipping["line_2"] as String,
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
                                  paymentDetails.shipping["country"] as String,
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
                                  paymentDetails.shipping["city"] as String,
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
                                  paymentDetails.shipping["county"] as String,
                              decoration: const InputDecoration(
                                  labelText: 'County',
                                  filled: true,
                                  errorMaxLines: 5),
                              readOnly: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                loadFailure: (_) => Container());
          },
        ));
  }
}
