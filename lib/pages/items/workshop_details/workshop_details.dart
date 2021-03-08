import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class WorkshopItemDetails extends StatefulWidget {

  final Workshop workshop;

  const WorkshopItemDetails({Key key, this.workshop}) : super(key: key);

  @override
  _WorkshopItemDetailsState createState() => _WorkshopItemDetailsState();
}

class _WorkshopItemDetailsState extends State<WorkshopItemDetails> {
  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  bool isDone = false;

  Widget isEventDone() {
    if(widget.workshop.hasStarted == "ended") {
      return Text("Workshop has Finished");
    } else if (isDone == true) {
      return Text("Workshop has Finished");
    } else {
      return FlatButton(
          onPressed: () async {
            await _handleCameraAndMic(Permission.camera);
            await _handleCameraAndMic(Permission.microphone);
            var result = await ExtendedNavigator.of(context)
                .pushStreamingHostScaffold(
                workshopId: widget.workshop.id.getOrCrash(),
                hostId: widget.workshop.userId
            );
            if (result == "completed") {
              setState(() {
                isDone = true;
              });
            }
          },
          child: Text(
            'Start Event',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          )
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workshop Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  initialValue: widget.workshop.workshopName.getOrCrash(),
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
                  initialValue: widget.workshop.workshopDescription.getOrCrash(),
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
                  initialValue: widget.workshop.workshopRequirements.getOrCrash(),
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
                        initialValue: widget.workshop.workshopDate.getOrCrash(),
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
                        initialValue: '${widget.workshop.workshopTime.getOrCrash()}',
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
                        initialValue: '${widget.workshop.workshopDuration.getOrCrash().toStringAsFixed(0)} Minutes',
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
                        initialValue: '£${widget.workshop.workshopPrice.getOrCrash().toStringAsFixed(2)}',
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
              ExpansionTile(
                title: Text('Guest List'),
                children: [
                  Container(
                    height: (widget.workshop.attendees.length * 30).toDouble(),
                    child: ListView.builder(
                      itemCount: widget.workshop.attendees.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Text(widget.workshop.attendees[index].username),
                        );
                      },
                    ),
                  ),
                ],
              ),
              isEventDone()
            ],
          ),
        ),
      ),
    );
  }
}
