import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

class WorkshopDetails extends StatelessWidget {
  final Workshop workshop;

  const WorkshopDetails({Key key, this.workshop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Workshop Details")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Host", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  )
              ),
              Row(
                children: [
                  CircularProfileAvatar('',
                      radius: 30,
                      child: CachedNetworkImage(
                        imageUrl: workshop.profileImage,
                        fit: BoxFit.fill,
                        placeholder: (context, url) => Center(
                          child: Container(
                              width: 30,
                              height: 30,
                              margin: const EdgeInsets.all(1),
                              child: Container()
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      )
                  ),
                  SizedBox(width: 24),
                  Text(
                    workshop.username,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ],
              ),
              Divider(color: Colors.black87,),
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
                        initialValue: '${workshop.workshopDuration.getOrCrash().toStringAsFixed(0)} Minutes',
                        decoration: const InputDecoration(
                            labelText: 'Duration',
                            filled: true,
                            errorMaxLines: 5),
                        readOnly: true,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
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
             Container(
               width: 150,
               height: 50,
               child: FlatButton(
                 onPressed: () => ExtendedNavigator.of(context).push(Routes.paymentFormScaffold, arguments: PaymentFormScaffoldArguments(
                   amount: 1,
                   cost: workshop.workshopPrice.getOrCrash(),
                   itemId: workshop.id.getOrCrash(),
                   peerId: workshop.userId,
                   isItem: false,
                   workshop: workshop
                 )),
                 color: Colors.blue[200],
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(18.0),
                     side: BorderSide(color: Colors.blue[200])
                 ),
                 child: Text("Book", style: TextStyle(
                   color: Colors.white
                 ),),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
