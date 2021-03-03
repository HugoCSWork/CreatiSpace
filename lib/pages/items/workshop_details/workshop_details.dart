import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class WorkshopItemDetails extends StatelessWidget {

  final Workshop workshop;

  const WorkshopItemDetails({Key key, this.workshop}) : super(key: key);

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workshop Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                initialValue: workshop.workshopName.getOrCrash(),
                decoration: const InputDecoration(
                    labelText: 'Workshop Name',
                    filled: true,
                    errorMaxLines: 5),
                readOnly: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),

              child: TextFormField(
                initialValue: workshop.workshopDescription.getOrCrash(),
                decoration: const InputDecoration(
                    labelText: 'Description',
                    filled: true,
                    errorMaxLines: 5),
                maxLines: 5,
                readOnly: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),

              child: TextFormField(
                initialValue: workshop.workshopRequirements.getOrCrash(),
                decoration: const InputDecoration(
                    labelText: 'Requirements',
                    filled: true,
                    errorMaxLines: 5),
                maxLines: 5,
                readOnly: true,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8.0),
                    child:
                    TextFormField(
                      initialValue: workshop.workshopDate.getOrCrash(),
                      decoration: const InputDecoration(
                          labelText: 'Date',
                          filled: true,
                          errorMaxLines: 5),
                      readOnly: true,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      initialValue: '${workshop.workshopTime.getOrCrash()}',
                      decoration: const InputDecoration(
                          labelText: 'Time',
                          filled: true,
                          errorMaxLines: 5),
                      readOnly: true,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      initialValue: '${workshop.workshopDuration.getOrCrash().toStringAsFixed(0)} Minutes',
                      decoration: const InputDecoration(
                          labelText: 'Duration',
                          filled: true,
                          errorMaxLines: 5),
                      readOnly: true,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8.0),
                    child:
                    TextFormField(
                      initialValue: '£${workshop.workshopPrice.getOrCrash().toStringAsFixed(2)}',
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
            FlatButton(
                onPressed: () async{
                  await _handleCameraAndMic(Permission.camera);
                  await _handleCameraAndMic(Permission.microphone);
                  ExtendedNavigator.of(context).pushStreamingHostScaffold(
                    workshopId: workshop.id.getOrCrash(),
                    hostId: workshop.userId
                  );
                },
                child: Text(
                    'Start Event',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
