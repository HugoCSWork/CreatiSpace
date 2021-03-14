import 'package:creatispace/app/payment_details/payment_details_form/payment_details_form_bloc.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class PaymentDetailsInformation extends StatefulWidget {

  final PaymentDetails paymentDetails;
  final ItemDto item;
  final bool isSender;
  const PaymentDetailsInformation({Key key, @required this.paymentDetails,
    @required this.item, @required this.isSender}) : super(key: key);

  @override
  _PaymentDetailsInformationState createState() => _PaymentDetailsInformationState(paymentDetails.deliveryStatus);
}

class _PaymentDetailsInformationState extends State<PaymentDetailsInformation> {

  String statusController;
  String currentStatus;
  bool isUpdating = false;

  _PaymentDetailsInformationState(String status) {
    statusController = status;
    currentStatus = status;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentDetailsFormBloc, PaymentDetailsFormState>(
      listener: (context, state) {
        return state.map(
          initial: (_) => null,
          updateInProgress: (_) =>
            setState(() {
              isUpdating = !isUpdating;
            }),
          updateSuccess: (_) {
            setState(() {
              isUpdating = !isUpdating;
              currentStatus = statusController;
            });
            return FlushbarHelper.createSuccess(
              message: 'Successfully updated status.',
            ).show(context);
          },
          updateFailed: (_) {
            isUpdating = !isUpdating;
            return FlushbarHelper.createError(
              message: 'Error updating status, try again later or contact support.',
            ).show(context);
          },
        );
      },
      child: Stack(
        children: [
          Scaffold(
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
                      initialValue: widget.paymentDetails.id.toString(),
                      decoration: const InputDecoration(
                          labelText: 'Order ID',
                          filled: true,
                          errorMaxLines: 5),
                      readOnly: true,
                    ),
                  ),
                  widget.isSender
                      ? Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                          margin: const EdgeInsets.only(
                              left: 16, top: 8, right: 16),
                          child:
                          DropdownButtonFormField<String>(
                            value: statusController,
                            items: ["Placed", "Dispatched", "Delivered"]
                                .map((label) => DropdownMenuItem(
                              child: Text(label),
                              value: label,
                            ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                statusController = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                          margin: const EdgeInsets.only(
                              left: 16, top: 8, right: 16),
                          child: TextButton(
                            onPressed: currentStatus != statusController
                                ?  () => context.read<PaymentDetailsFormBloc>()
                                .add(PaymentDetailsFormEvent.updateOrderStatus(statusController, widget.paymentDetails.id, widget.paymentDetails.peerId, widget.isSender))
                                : null,
                            child: Text("Update"),
                          ),
                        ),
                      ),
                    ],
                  )
                    : Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                          margin: const EdgeInsets.only(
                              left: 16, top: 8, right: 16),
                          child: TextFormField(
                            initialValue:
                            widget.paymentDetails.deliveryStatus,
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
                      initialValue: widget.item.name,
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
                            widget.paymentDetails.quantity.toString(),
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
                            '£${(widget.item.price * int.parse(widget.paymentDetails.quantity)).toStringAsFixed(2)}',
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
                      '£${widget.item.delivery.toStringAsFixed(2)}',
                      decoration: const InputDecoration(
                          labelText: 'Delivery',
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
                      '£${(widget.paymentDetails.amount / 100).toStringAsFixed(2)}',
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
                            widget.paymentDetails.shipping["house_number"] as String,
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
                            widget.paymentDetails.shipping["postcode"] as String,
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
                      widget.paymentDetails.shipping["line_1"] as String,
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
                      widget.paymentDetails.shipping["line_2"] as String,
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
                      widget.paymentDetails.shipping["country"] as String,
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
                      widget.paymentDetails.shipping["city"] as String,
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
                      widget.paymentDetails.shipping["county"] as String,
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
          ),
          SavingInProgress(isSaving: isUpdating, message: 'Processing')
        ]
        ),
    );
  }
}
