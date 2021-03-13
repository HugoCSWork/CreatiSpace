import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/pages/home/widgets/home_widgets.dart';
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
                leading: homePostImageIcon(url: homeItem.profileImageURL),
                title: homePostUsername(id: homeItem.id, username: homeItem.username, context: context)
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
                  homePostItemName(name: homeItem.name.getOrCrash()),
                  homePostIsPurchasable(isPurchasable: homeItem.purchasable.getOrCrash(), price: homeItem.price.getOrCrash())
                ],
              ),
              homePostItemDescription(description: homeItem.description.getOrCrash()),
              Container(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0,0,9,5),
                    child: TextButton(
                        onPressed: () {
                          ExtendedNavigator.of(context).push(Routes.moreInfoScaffold,
                              arguments: MoreInfoScaffoldArguments(
                                homeItem: homeItem
                              ));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue[200])
                            )),
                        ),
                        child: Text("More")
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
