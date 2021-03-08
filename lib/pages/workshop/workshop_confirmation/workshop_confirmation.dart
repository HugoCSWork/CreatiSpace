import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:flutter/material.dart';

class WorkshopConfirmation extends StatelessWidget {

  final Workshop workshop;

  const WorkshopConfirmation({Key key, this.workshop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workshop Booking"),
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
                    initialValue: workshop.workshopName.getOrCrash(),
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
                    initialValue: workshop.workshopDescription.getOrCrash(),
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
                    initialValue: workshop.workshopRequirements.getOrCrash(),
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
                    initialValue: workshop.workshopDate.getOrCrash(),
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
                          '${workshop.workshopDuration.getOrCrash().toStringAsFixed(0)} Minutes',
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
                          '£${workshop.workshopPrice.getOrCrash().toStringAsFixed(2)}',
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

              ],
            )
        ),
      ),
    );
  }
}
