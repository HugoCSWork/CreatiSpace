import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

class PaymentFormBuilder extends StatelessWidget {
  final StripeCard card = StripeCard();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Form(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                CardForm(
                    formKey: formKey,
                    card: card
                ),
                Container(
                  child: RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      child: const Text('Buy', style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        if(formKey.currentState.validate() == true) {
                          formKey.currentState.save();
                          context.read<PaymentFormBloc>().add(PaymentFormEvent.saved(card));
                        }
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
