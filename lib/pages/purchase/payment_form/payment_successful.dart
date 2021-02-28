import 'package:cached_network_image/cached_network_image.dart';
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
                                  Text(
                                      "Order Summary",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    "Product Name: ${state.item.name}",
                                    style: TextStyle(
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                      "Total Cost: £${(double.parse(amount) / 100).toStringAsFixed(2)}",
                                      style: TextStyle(
                                          fontSize: 16
                                      ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                      "Quantity: ${quantity}",
                                      style: TextStyle(
                                          fontSize: 16
                                      ),
                                  ),
                                  SizedBox(height: 16),
                                  // Text("Delivering to: ${address["line_1"]}, ${address["line_2"]}, ${address["postcode"]}, ${address["city"]}, ${address["county"]}, ${address["country"]}"),
                                  Text(
                                      "Delivering to: 4 Pine Street, Seaton Burn, NE13 6HE, Newcastle upon Tyne, Tyne & Wear, UK",
                                    style: TextStyle(
                                        fontSize: 16
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                                    child: Center(
                                      child: Material(
                                        elevation: 0.5,
                                        child: SizedBox(
                                          height: 400,
                                          width:  MediaQuery.of(context).size.width - 30,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: state.item.images.length,
                                            itemBuilder: (context, index) {
                                              return CachedNetworkImage(
                                                imageUrl: state.item.images[index].url,
                                                fit: BoxFit.fitWidth,
                                                width: MediaQuery.of(context).size.width - 30,
                                                height: 400,
                                                placeholder: (context, url) => Center(
                                                  child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      margin: const EdgeInsets.all(5),
                                                      child:  Container()
                                                  ),
                                                ),
                                                errorWidget: (context, url, error) => const Icon(Icons.error),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
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
