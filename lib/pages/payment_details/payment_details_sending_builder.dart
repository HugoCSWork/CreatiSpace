import 'package:creatispace/app/payment_details/payment_sender/payment_sender_bloc.dart';
import 'package:creatispace/pages/payment_details/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailsSendingBuilder extends StatelessWidget {

  final bool isSender;

  const PaymentDetailsSendingBuilder({Key key, this.isSender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentSenderBloc, PaymentSenderState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  child: const Center(
                      child: CircularProgressIndicator()
                  )
              ),
              loadSuccess: (state) {
                return Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(10.0),
                    itemBuilder: (context, index) {
                      return PaymentDetailsUI(paymentDetails: state.paymentDetails.asList()[index], isSender: isSender);
                    },
                    itemCount: state.paymentDetails.size,
                  ),
                );
              },
              loadFailure: (_) => Container()
          );
        },
    );
  }
}
