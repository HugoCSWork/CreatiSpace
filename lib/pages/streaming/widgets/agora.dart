import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';

Widget toolbar(ClientRole role, ClientRole audience, bool muted, Function() onMicPressed,  Function() onCameraPressed, Function() onMessagePressed, Function() onEndPressed) {
  if (role == audience) return Container();
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
          onPressed: onEndPressed,
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