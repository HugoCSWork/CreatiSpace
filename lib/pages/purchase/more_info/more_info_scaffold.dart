import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

class MoreInfoScaffold extends StatefulWidget {

  final HomeItem homeItem;

  const MoreInfoScaffold({Key key, this.homeItem}) : super(key: key);

  @override
  _MoreInfoScaffoldState createState() => _MoreInfoScaffoldState();
}

class _MoreInfoScaffoldState extends State<MoreInfoScaffold> {
  int _quantityController = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Description'),
      ),
      body: SingleChildScrollView(
        child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: CircularProfileAvatar('',
                      radius: 15,
                      child: CachedNetworkImage(
                        imageUrl: widget.homeItem.profileImageURL,
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
                  title: GestureDetector(
                    child: Text(widget.homeItem.username),
                    onTap: (){
                      ExtendedNavigator.of(context).push(Routes.peerProfileScaffold, arguments: PeerProfileScaffoldArguments(
                          id: widget.homeItem.id
                      ));
                    },
                  ),
                ),
                Material(
                  elevation: 0.5,
                  child: SizedBox(
                    height: 400,
                    width:  MediaQuery.of(context).size.width - 30,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.homeItem.images.length,
                      itemBuilder: (context, index) {
                        return CachedNetworkImage(
                          imageUrl: widget.homeItem.images.getOrCrash()[index].url.getOrCrash(),
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width - 30,
                          height: 400,
                          placeholder: (context, url) => Center(
                            child: Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.all(5),
                                child:  Container()
                            ),
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.homeItem.name.getOrCrash(),
                          style: TextStyle(
                              fontSize: 20
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        widget.homeItem.purchasable.getOrCrash()
                            ?  widget.homeItem.quantity.getOrCrash() > 0
                                ? '£${widget.homeItem.price.getOrCrash().toStringAsFixed(2)}'
                                : 'Out of stock'
                            : 'Non-Purchasable',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      widget.homeItem.description.getOrCrash()
                  ),
                ),
                widget.homeItem.quantity.getOrCrash() > 0
                ? Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
                      child: Text("Delivery -  3 to 5 days", style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  )
                  : Container(),
                widget.homeItem.quantity.getOrCrash() > 0
                    ? Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 15, 0),
                          child: SizedBox(
                            height: 75,
                            width: 100,
                            child: DropdownButtonFormField(
                                value: _quantityController,
                                items: List.generate(widget.homeItem.quantity.getOrCrash(), (index) {
                                  index = index + 1;
                                  return DropdownMenuItem(
                                    child: Text(index.toString()),
                                    value: index,
                                  );
                                }),
                                onChanged: (int value) {
                                  setState(() {
                                    _quantityController = value;
                                  });
                                },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right:16),
                          child: SizedBox(
                            width: 100,
                            height: 60,
                            child: FlatButton(
                              onPressed: () {
                                ExtendedNavigator.of(context).push(Routes.paymentFormScaffold,
                                    arguments: PaymentFormScaffoldArguments(
                                      amount: _quantityController,
                                      peerId: widget.homeItem.id,
                                      itemId: widget.homeItem.item_id,
                                      cost: widget.homeItem.price.getOrCrash()
                                    )
                                );
                              },
                              color: Colors.blue[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.blue[200])
                              ),
                              child: Text("Buy")
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Container()
                // Container(
                //   alignment: Alignment.topRight,
                //   child: Padding(
                //       padding: EdgeInsets.fromLTRB(0,0,9,5),
                //       child: FlatButton(
                //           onPressed: () {
                //             // ExtendedNavigator.of(context).push(Routes.paymentFormScaffold,
                //             //     arguments: PaymentFormScaffoldArguments(
                //             //       amount: "2",
                //             //       peerId: homeItem.id,
                //             //       itemId: homeItem.item_id
                //             //     )
                //             // );
                //           },
                //           color: Colors.blue[200],
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(18.0),
                //               side: BorderSide(color: Colors.blue[200])
                //           ),
                //           child: Text("Buy")
                //       )
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                //   child: Divider(
                //     color: Colors.black87,
                //   ),
                // )
              ],
            ),
          ),
      ),
    );
  }
}
