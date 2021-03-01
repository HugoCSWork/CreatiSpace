import 'package:creatispace/domain/items/item/item.dart';
import 'package:flutter/material.dart';

class ErrorItemCard extends StatelessWidget {
  final Item item;

  const ErrorItemCard({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Card(
        color: Theme.of(context).errorColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Text(
                'Invalid item, please contact support',
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyText2
                    .copyWith(fontSize: 18),
              ),
              const SizedBox(height: 10,),
              Text(
                item.failureOption.fold(() => '', (f) => 'Details for error: ${f.toString()}'),
                style: Theme.of(context).primaryTextTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
