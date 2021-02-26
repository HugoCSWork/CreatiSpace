import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final HomeItem homeItem;

  const Home({Key key, @required this.homeItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          shadowColor: Colors.blue.withOpacity(.05),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: CircularProfileAvatar('',
                    radius: 15,
                    child: CachedNetworkImage(
                      imageUrl: homeItem.profileImageURL,
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
                  child: Text(homeItem.username),
                  onTap: (){
                    ExtendedNavigator.of(context).push(Routes.peerProfileScaffold, arguments: PeerProfileScaffoldArguments(
                      id: homeItem.id
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
                    itemCount: homeItem.images.length,
                    itemBuilder: (context, index) {
                      return CachedNetworkImage(
                          imageUrl: homeItem.images.getOrCrash()[index].url.getOrCrash(),
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
                        homeItem.name.getOrCrash(),
                        style: TextStyle(
                            fontSize: 20
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      homeItem.purchasable.getOrCrash()
                          ?  '£${homeItem.price.getOrCrash().toStringAsFixed(2)}'
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
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      homeItem.description.getOrCrash()
                  ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0,0,9,5),
                    child: FlatButton(
                        onPressed: () {
                          ExtendedNavigator.of(context).push(Routes.moreInfoScaffold,
                              arguments: MoreInfoScaffoldArguments(
                                homeItem: homeItem
                              ));
                        },
                        color: Colors.blue[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue[200])
                        ),
                        child: Text("More")
                    )
                ),
              ),
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
