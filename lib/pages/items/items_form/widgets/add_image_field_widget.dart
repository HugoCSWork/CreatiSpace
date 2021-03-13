import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:creatispace/pages/items/items_form/misc/build_context_x.dart';
import 'package:creatispace/pages/items/items_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';


class AddItemTile extends StatelessWidget {
  const AddItemTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemFormBloc, ItemFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formItems = state.item.images.value.fold(
          (f) => listOf<ImageItemPrimitive>(),
          (todoItemList) =>
              todoItemList.map((_) => ImageItemPrimitive.fromDomain(_)),
        );
      },
      buildWhen: (p, c) => p.item.images.isFull != c.item.images.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.item.images.isFull,
          title: const Text('Add a Image'),
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.add),
          ),
          onTap: () {
            context.formItems =
                context.formItems.plusElement(ImageItemPrimitive.empty());
            context.read<ItemFormBloc>().add(
                  ItemFormEvent.itemsChanged(context.formItems),
                );
          },
        );
      },
    );
  }
}
