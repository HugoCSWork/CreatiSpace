import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

class CardPaymentStep extends StatefulWidget {
  final String peerId;
  final int amount;
  final String itemId;
  final double totalCost;
  final bool isItem;

  CardPaymentStep({Key key, @required this.peerId, this.amount,
    @required this.itemId, this.totalCost, @required this.isItem}) : super(key: key);

  @override
  _CardPaymentStepState createState() => _CardPaymentStepState();
}

class _CardPaymentStepState extends State<CardPaymentStep> {
  final StripeCard card = StripeCard();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;


  @override
  Widget build(BuildContext context) {
    void onCreditCardModelChange(CreditCardModel creditCardModel) {
      setState(() {
        cardNumber = creditCardModel.cardNumber;
        expiryDate = creditCardModel.expiryDate;
        cvvCode = creditCardModel.cvvCode;
        isCvvFocused = creditCardModel.isCvvFocused;
        cardHolderName = creditCardModel.cardHolderName;
      });
    }

    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Form(
            child: Column(
              children: <Widget>[
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: false,
                ),
                CreditCardForm(
                  formKey: formKey,
                  obscureCvv: false,
                  obscureNumber: true,
                  cardNumberDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Number',
                    errorMaxLines: 3,
                    hintText: 'XXXX XXXX XXXX XXXX',
                  ),
                  expiryDateDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expired Date',
                    hintText: 'XX/XX',
                      errorMaxLines: 3

                  ),
                  cvvCodeDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVV',
                    hintText: 'XXX',
                    errorMaxLines: 3
                  ),
                  cardHolderDecoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    errorMaxLines: 3,
                    labelText: 'Card Holder',
                  ),
                  onCreditCardModelChange: onCreditCardModelChange,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                        child: TextFormField(
                          initialValue: widget.amount.toString(),
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
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                        child: TextFormField(
                          initialValue: '£${(widget.amount * widget.totalCost).toStringAsFixed(2)}',
                          decoration: const InputDecoration(
                              labelText: 'Total Cost',
                              filled: true,
                              errorMaxLines: 5),
                          readOnly: true,
                        ),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: const Text(
                      'Purchase',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'halter',
                        fontSize: 14,
                        package: 'flutter_credit_card',
                      ),
                    ),
                  ),
                  color: const Color(0xff1b447b),
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      StripeCard card = new StripeCard(
                        number: cardNumber,
                        expMonth: int.parse(expiryDate.substring(0,2)),
                        expYear: int.parse(expiryDate.substring(3,5)),
                        cvc: cvvCode
                      );
                      formKey.currentState.save();
                      if(widget.isItem) {
                        context.read<PaymentFormBloc>().add(PaymentFormEvent.saved(card, widget.peerId, widget.amount.toString(), widget.itemId));
                      } else {
                        context.read<PaymentFormBloc>().add(PaymentFormEvent.savedWorkshop(card, widget.peerId, widget.itemId));
                      }
                    }
                  },
                )
              ],
            ),
          ),
        ),
    );
  }
}
