import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:flutter/material.dart';

class WorkshopConfirmation extends StatelessWidget {

  final Workshop workshop;

  const WorkshopConfirmation({Key key, this.workshop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Successfully booked Workshop"),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Thank you for your booking, you will receive an email confirmation shortly.",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Order Summary",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Workshop Name: ${workshop.workshopName.getOrCrash()}",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Workshop Description: ${workshop.workshopDescription.getOrCrash()}",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Workshop Requirements: ${workshop.workshopRequirements.getOrCrash()}",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Workshop Date: ${workshop.workshopDate.getOrCrash()}",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Workshop Duration: ${workshop.workshopDuration.getOrCrash().toStringAsFixed(0)}",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Total Cost: £${workshop.workshopPrice.getOrCrash().toStringAsFixed(2)}",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 16),
              ],
            )
        ),
      ),
    );
  }
}
