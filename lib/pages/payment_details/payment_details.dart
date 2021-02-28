import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

class PaymentDetailsUI extends StatelessWidget {
  final PaymentDetails paymentDetails;
  final bool isSender;

  const PaymentDetailsUI({Key key, @required this.paymentDetails, @required this.isSender})
      : super(key: key);


  Widget _getImage(BuildContext context, String imageUrl) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      placeholder: (context, url) => Center(
        child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(5),
            child: const CircularProgressIndicator()),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
      width: double.maxFinite,
      child: Card(
        elevation: 2,
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.paymentDetailInformationScaffold, arguments: PaymentDetailInformationScaffoldArguments(
              paymentDetails: paymentDetails,
                isSender: isSender
            ));
          },
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 4, right: 16, top: 12, bottom: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Hero(
                            tag: paymentDetails.id,
                            child: SizedBox(
                              width: 80.0,
                              height: 100.0,
                              child: _getImage(context, paymentDetails.image)
                            )
                          ),
                          SizedBox(width: 16,),
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '${isSender ? 'Ordered by ${paymentDetails.peerUsername}' : 'Delivered by ${paymentDetails.username}'}', style: TextStyle(
                                      fontSize: 16)
                                  ),
                                  SizedBox(height: 20,),

                                  Text('Order status - ${paymentDetails.deliveryStatus}', style: TextStyle(
                                      fontSize: 13,
                                      color: paymentDetails.deliveryStatus != "delivered"
                                          ? Colors.red
                                          : Colors.green,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
