import 'package:creatispace/app/auth/is_verified/is_verified_bloc.dart';
import 'package:creatispace/app/payment_details/payment_receiver/payment_receiver_bloc.dart';
import 'package:creatispace/app/payment_details/payment_sender/payment_sender_bloc.dart';
import 'package:creatispace/app/payment_details/payment_workshop/payment_workshop_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/payment_details/payment_details_receiving_builder.dart';
import 'package:creatispace/pages/payment_details/payment_details_sending_builder.dart';
import 'package:creatispace/pages/payment_details/payment_details_workshop_builder.dart';
import 'package:creatispace/pages/payment_details/workshop_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailsScaffold extends StatefulWidget {
  @override
  _PaymentDetailsScaffoldState createState() => _PaymentDetailsScaffoldState();
}

class _PaymentDetailsScaffoldState extends State<PaymentDetailsScaffold> {

  TextEditingController option = TextEditingController(text: "receive");

  Widget whichDisplay() {
    if(option.text == "receive") {
      return PaymentDetailsReceivingBuilder(isSender: false);
    } else if(option.text == "workshop") {
      return WorkshopDetailsBuilder();
    } else {
      return PaymentDetailsSendingBuilder(isSender: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: MultiBlocProvider(
        providers: <BlocProvider>[
          BlocProvider<PaymentReceiverBloc>(
              create: (context) => getIt<PaymentReceiverBloc>()
                  ..add(PaymentReceiverEvent.watchAllPaymentReceiverList()),
          ),
          BlocProvider<PaymentSenderBloc>(
            create: (context) => getIt<PaymentSenderBloc>()
                  ..add(PaymentSenderEvent.watchAllPaymentSenderList()),
          ),
          BlocProvider<PaymentWorkshopBloc>(
            create: (context) => getIt<PaymentWorkshopBloc>()
              ..add(PaymentWorkshopEvent.watchAlWorkshopList()),
          ),
          BlocProvider<IsVerifiedBloc>(
            create: (context) => getIt<IsVerifiedBloc>()
            ..add(IsVerifiedEvent.verifiedCheckRequested())
          ),
        ],
        child: BlocBuilder <IsVerifiedBloc, IsVerifiedState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 200,
                    child: const Center(
                        child: CircularProgressIndicator()
                    )
                ),
                authenticated: (_) =>  Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlatButton(
                                child: Text(
                                    "Orders to receive",
                                    style: TextStyle(
                                        fontWeight: option.text == "receive"
                                            ? FontWeight.bold
                                            : FontWeight.normal
                                    )
                                ),
                                onPressed: () {
                                  setState(() {
                                    option.text = "receive";
                                  });
                                },
                              ),
                              Container(
                                height: 30,
                                width: 1.3,
                                color: Colors.blue[200],
                              ),
                              FlatButton(
                                child: Text(
                                  "Orders to send",
                                  style: TextStyle(
                                      fontWeight: option.text == "send"
                                          ? FontWeight.bold
                                          : FontWeight.normal
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    option.text = "send";
                                  });
                                },
                              ),

                              Container(
                                height: 30,
                                width: 1.3,
                                color: Colors.blue[200],
                              ),
                              FlatButton(
                                child: Text(
                                    "Workshops",
                                    style: TextStyle(
                                        fontWeight: option.text == "workshop"
                                            ? FontWeight.bold
                                            : FontWeight.normal
                                    )
                                ),
                                onPressed: () {
                                  setState(() {
                                    option.text = "workshop";
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    whichDisplay(),
                  ],
                ),
                unauthenticated: (_) => Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            child: Text(
                                "Orders to receive",
                                style: TextStyle(
                                    fontWeight: option.text == "receive"
                                        ? FontWeight.bold
                                        : FontWeight.normal
                                )
                            ),
                            onPressed: () {
                              setState(() {
                                option.text = "receive";
                              });
                            },
                          ),
                          Container(
                            height: 30,
                            width: 1.3,
                            color: Colors.blue[200],
                          ),
                          FlatButton(
                            child: Text(
                                "Workshops",
                                style: TextStyle(
                                    fontWeight: option.text == "workshop"
                                        ? FontWeight.bold
                                        : FontWeight.normal
                                )
                            ),
                            onPressed: () {
                              setState(() {
                                option.text = "workshop";
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    whichDisplay(),
                  ],
                ),
            );
          },
        )

      ),
    );
  }
}
