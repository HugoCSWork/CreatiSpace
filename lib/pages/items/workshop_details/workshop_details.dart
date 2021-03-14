import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/pages/items/workshop_details/widgets/workshop_detail_widgets.dart';
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
      return TextButton(
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
              workshopDetailsName(name:  widget.workshop.workshopName.getOrCrash()),
              workshopDetailsDescription(description:  widget.workshop.workshopDescription.getOrCrash()),
              workshopDetailsRequirements(requirements: widget.workshop.workshopRequirements.getOrCrash()),
              Row(
                children: [
                  workshopDetailsDate(date: widget.workshop.workshopDate.getOrCrash()),
                  SizedBox(width: 10),
                  workshopDetailsTime(time: widget.workshop.workshopTime.getOrCrash()),
                ],
              ),
              Row(
                children: [
                  workshopDetailsDuration(duration: widget.workshop.workshopDuration.getOrCrash()),
                  SizedBox(width: 10),
                  workshopDetailsPrice(price: widget.workshop.workshopPrice.getOrCrash()),
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
