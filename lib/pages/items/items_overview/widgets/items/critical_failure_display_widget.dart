import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ItemErrorFailure itemFailure;

  const CriticalFailureDisplay({Key key, @required this.itemFailure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget> [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 50,
            semanticLabel: 'Label to show critical error message',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              itemFailure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient Permissions',
                orElse: () => 'Unexpected Error, Contact support.'
              ),
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )
    );
  }
}

class CriticalFailureDisplayWorkshop extends StatelessWidget {
  final WorkshopErrorFailures itemFailure;

  const CriticalFailureDisplayWorkshop({Key key, @required this.itemFailure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 50,
              semanticLabel: 'Label to show critical error message',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                itemFailure.maybeMap(
                    insufficientPermissions: (_) => 'Insufficient Permissions',
                    orElse: () => 'Unexpected Error, Contact support.'
                ),
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
    );
  }
}

