import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/item/item_actor/item_actor_bloc.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/pages/items/items_overview/widgets/items/card_widgets/card_widgets.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({Key key, this.item}) : super(key: key);


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
                        (r) =>  r.size != 0 ? getItemCardImage(context, item.images.getOrCrash()[0].url) : Container(),
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
                      child: itemCardName(name: item.name.getOrCrash())
                    ),
                    const SizedBox(height: 4.0),
                    itemCardDescription(context: context, description: item.description.getOrCrash()),
                    const SizedBox(height: 4.0),
                    itemCardPrice(price: item.price.getOrCrash()),
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
          title: const Text('Delete Selected item'),
          content: Text(
            item.name.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            TextButton(
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
