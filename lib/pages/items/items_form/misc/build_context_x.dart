import 'package:creatispace/pages/items/items_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormImagesX on BuildContext {
  KtList<ImageItemPrimitive> get formItems =>
      Provider.of<ImageItems>(this, listen: false).value;
  set formItems(KtList<ImageItemPrimitive> value) =>
      Provider.of<ImageItems>(this, listen: false).value = value;
}


