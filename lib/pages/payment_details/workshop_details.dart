import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_payment.dart';
import 'package:creatispace/infrastructure/workshop/workshop_dto.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class WorkshopDetailsUI extends StatelessWidget {

  final WorkshopPayment workshopPayment;

  const WorkshopDetailsUI({Key key, this.workshopPayment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushWorkshopDetailsInformation(workshopPayment: workshopPayment);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          height: 100.0,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0.2, 1.0),
                blurRadius: 5.0,
                color: Colors.black26,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        workshopPayment.workshop["workshopName"].toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        workshopPayment.workshop["workshopDescription"].toString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          // color: Color(0xFFBBCCCC),
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Date: ${workshopPayment.workshop["workshopDate"].toString()}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WorkshopDetailsInformation extends StatelessWidget {

  final WorkshopPayment workshopPayment;

  const WorkshopDetailsInformation({Key key, this.workshopPayment}) : super(key: key);
  Future<void> _handleCameraAndMic(Permission permission) async {
    await permission.request();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workshop Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            workshopPayment.hasStarted != "ended"
            ?
            FlatButton(
                onPressed: workshopPayment.hasStarted == "started"
                ? () async {
                  await _handleCameraAndMic(Permission.camera);
                  await _handleCameraAndMic(Permission.microphone);
                  ExtendedNavigator.of(context).pushStreamingAudienceScaffold(
                    workshopId: workshopPayment.workshop["id"].toString(),
                    hostId : workshopPayment.workshop["userId"].toString()
                  );
                }
                : () {},
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Join Event',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: workshopPayment.hasStarted == "started" ? Colors.black87 : Colors.grey
                        ),
                    ),
                  ),
                )
            )
            :  Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'This workshop has finished',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            workshopPayment.hasStarted != "ended"
                ?
            Align(
              alignment: Alignment.center,
              child: Text(
              workshopPayment.hasStarted == "started"
                  ? ""
                  :"Event has not started yet check back later",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )
            : Container(),
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
                initialValue: workshopPayment.paymentIntentRes["id"].toString(),
                decoration: const InputDecoration(
                    labelText: 'Order ID',
                    filled: true,
                    errorMaxLines: 5),
                readOnly: true,
              ),
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
                initialValue: workshopPayment.workshop["workshopName"].toString(),
                decoration: InputDecoration(
                    labelText: 'Workshop Name',
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
                initialValue: workshopPayment.workshop["workshopDescription"].toString(),
                decoration: InputDecoration(
                    labelText: 'Workshop Description',
                    filled: true,
                    errorMaxLines: 5),
                maxLines: 5,
                readOnly: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              margin: const EdgeInsets.only(
                  left: 16, top: 8, right: 16),
              child: TextFormField(
                initialValue: workshopPayment.workshop["workshopRequirements"].toString(),
                decoration: InputDecoration(
                    labelText: 'Workshop Requirements',
                    filled: true,
                    errorMaxLines: 5),
                maxLines: 5,
                readOnly: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              margin: const EdgeInsets.only(
                  left: 16, top: 8, right: 16),
              child: TextFormField(
                initialValue: workshopPayment.workshop["workshopDate"].toString(),
                decoration: InputDecoration(
                    labelText: 'Date',
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
                      '${double.parse(workshopPayment.workshop["workshopDuration"].toString()).toStringAsFixed(0)} Minutes',
                      decoration: const InputDecoration(
                          labelText: 'Duration',
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
                      '£${double.parse(workshopPayment.workshop["workshopPrice"].toString()).toStringAsFixed(2)}',
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
            Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                child: Text(
                  "Payment Delivery Information",
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
                      workshopPayment.paymentIntentRes["shipping"]["house_number"] as String,
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
                    workshopPayment.paymentIntentRes["shipping"]["postcode"] as String,
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
                workshopPayment.paymentIntentRes["shipping"]["line_1"] as String,
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
                workshopPayment.paymentIntentRes["shipping"]["line_2"] as String,
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
                workshopPayment.paymentIntentRes["shipping"]["country"] as String,
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
                workshopPayment.paymentIntentRes["shipping"]["city"] as String,
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
                workshopPayment.paymentIntentRes["shipping"]["county"] as String,
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
  }
}
