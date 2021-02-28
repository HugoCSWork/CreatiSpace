import 'package:creatispace/app/payment_details/payment_details_form/payment_details_form_bloc.dart';
import 'package:creatispace/app/payment_details/payment_item_details/payment_item_details_bloc.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/payment_detail_information/payment_detail_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailInformationScaffold extends StatelessWidget {

  final PaymentDetails paymentDetails;
  final bool isSender;

  const PaymentDetailInformationScaffold({Key key, this.paymentDetails,
        this.isSender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
        create: (context) => getIt<PaymentItemDetailsBloc>()
          ..add(PaymentItemDetailsEvent.getPaymentItemStarted(paymentDetails.userId, paymentDetails.itemId)),
        ),
        BlocProvider(
          create: (context) => getIt<PaymentDetailsFormBloc>()
        ),
      ],
      child: BlocBuilder<PaymentItemDetailsBloc, PaymentItemDetailsState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  child: const Center(child: CircularProgressIndicator())),
              loadSuccess: (state) => PaymentDetailsInformation(paymentDetails: paymentDetails,item: state.item, isSender: isSender),
              loadFailure: (_) => Container()
          );
        },
      ),
    );
  }
}
