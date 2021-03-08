import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/streaming/end_stream/end_stream_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> confirmationDialog(BuildContext context, String title) {
  Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () =>  {
        ExtendedNavigator.of(context).pop(),
        FocusManager.instance.primaryFocus.unfocus()
      }
  );
  Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed:  () => {
        ExtendedNavigator.of(context).pop(),
        ExtendedNavigator.of(context).pop("completed"),
        FocusManager.instance.primaryFocus.unfocus()
      }
  );

  return showDialog(
    context: context,
    child: AlertDialog(
      title: Text(title),
      actions: [
        cancelButton,
        continueButton,
      ],
    ),
  );
}

Widget toolbar(BuildContext context, ClientRole role, String workshopId, ClientRole audience, bool muted, VoidCallback onMicPressed,  VoidCallback onCameraPressed, VoidCallback onMessagePressed) {
  if (role == audience) return Container(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: onMessagePressed,
            child: Icon(
              Icons.message,
              color: Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          RawMaterialButton(
            onPressed: () => confirmationDialog(context, "Are you sure you want to leave the workshop?"),
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 35.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.redAccent,
            padding: const EdgeInsets.all(15.0),
          ),
        ],
      ),
    ),
  );
  return Container(
    alignment: Alignment.bottomCenter,
    padding: const EdgeInsets.symmetric(vertical: 48),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RawMaterialButton(
          onPressed: onMicPressed,
          child: Icon(
            muted ? Icons.mic_off : Icons.mic,
            color: muted ? Colors.white : Colors.blueAccent,
            size: 20.0,
          ),
          shape: CircleBorder(),
          elevation: 2.0,
          fillColor: muted ? Colors.blueAccent : Colors.white,
          padding: const EdgeInsets.all(12.0),
        ),
        RawMaterialButton(
          onPressed: onCameraPressed,
          child: Icon(
            Icons.switch_camera,
            color: Colors.blueAccent,
            size: 20.0,
          ),
          shape: CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.white,
          padding: const EdgeInsets.all(12.0),
        ),

        RawMaterialButton(
          onPressed: onMessagePressed,
          child: Icon(
            Icons.message,
            color: Colors.blueAccent,
            size: 20.0,
          ),
          shape: CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.white,
          padding: const EdgeInsets.all(12.0),
        ),
        RawMaterialButton(
          onPressed: () {
            context.read<EndStreamBloc>().add(EndStreamEvent.endStream(workshopId));
            return confirmationDialog(context, "Are you sure you want to leave the workshop?\n\nDoing this will end the stream!");
          },
          child: Icon(
            Icons.call_end,
            color: Colors.white,
            size: 35.0,
          ),
          shape: CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.redAccent,
          padding: const EdgeInsets.all(15.0),
        ),
      ],
    ),
  );
}

Widget toolbarWithChat(BuildContext context, ClientRole role, ClientRole audience, bool muted, VoidCallback onMicPressed,  VoidCallback onCameraPressed, VoidCallback onMessagePressed) {
  if (role == audience) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RawMaterialButton(
          onPressed: onMessagePressed,
          child: Icon(
            Icons.message,
            color: Colors.blueAccent,
            size: 20.0,
          ),
          shape: CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.white,
          padding: const EdgeInsets.all(12.0),
        ),
        SizedBox(height: 16),

        RawMaterialButton(
          onPressed:  () => confirmationDialog(context, "Are you sure you want to leave the workshop?"),
          child: Icon(
            Icons.call_end,
            color: Colors.white,
            size: 35.0,
          ),
          shape: CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.redAccent,
          padding: const EdgeInsets.all(15.0),
        ),
      ],
    );
  } else {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: onMicPressed,
            child: Icon(
              muted ? Icons.mic_off : Icons.mic,
              color: muted ? Colors.white : Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: muted ? Colors.blueAccent : Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          SizedBox(height: 16),
          RawMaterialButton(
            onPressed: onCameraPressed,
            child: Icon(
              Icons.switch_camera,
              color: Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          SizedBox(height: 16),

          RawMaterialButton(
            onPressed: onMessagePressed,
            child: Icon(
              Icons.message,
              color: Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          SizedBox(height: 16),

          RawMaterialButton(
            onPressed: () => confirmationDialog(context, "Are you sure you want to leave the workshop?\n\nDoing this will end the stream!"),
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 35.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.redAccent,
            padding: const EdgeInsets.all(15.0),
          ),
        ],
    );
  }
}



Widget panel(List infoStrings) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 48),
    alignment: Alignment.bottomCenter,
    child: FractionallySizedBox(
      heightFactor: 0.5,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: ListView.builder(
          reverse: true,
          itemCount: infoStrings.length,
          itemBuilder: (BuildContext context, int index) {
            if (infoStrings.isEmpty) {
              return null;
            }
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        infoStrings[index] as String,
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}