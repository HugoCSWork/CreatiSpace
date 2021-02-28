import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:creatispace/app/item/item_actor/item_actor_bloc.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({Key key, this.item}) : super(key: key);

  Widget _getImage(BuildContext context, ItemImage imageName) {
    return CachedNetworkImage(
      imageUrl: imageName.value.fold((l) => 'ERROR', (r) => r),
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
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushItemFormPage(editedItem: item);
      },
      onLongPress: () {
        final itemActorBloc = context.read<ItemActorBloc>();
        _showDeletionDialog(context, itemActorBloc);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          height: 140.0,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0.2, 1.0),
                blurRadius: 5.0,
                color: Colors.black26,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Hero(
                  tag: item.id.getOrCrash(),
                  child: SizedBox(
                      width: 80.0,
                      height: 120.0,
                      child:  item.images.value.fold(
                        (l) => null, 
                        (r) =>  r.size != 0 ? _getImage(context, item.images.getOrCrash()[0].url) : Container(),
                      )
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        item.name.getOrCrash().toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        item.description.getOrCrash().toString(),
                        style: const TextStyle(
                          color: Color(0xFFBBCCCC),
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    if (item.price.getOrCrash() == 0.0)
                      const Text(
                        'Non Purchasable',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    else
                      Text(
                        '£${item.price.getOrCrash().toStringAsFixed(2)}}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    const SizedBox(
                      height: 2.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, ItemActorBloc itemActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected item:'),
          content: Text(
            item.name.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                itemActorBloc.add(ItemActorEvent.deleted(item));
                Navigator.pop(context);
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}
