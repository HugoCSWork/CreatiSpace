import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/pages/items/items_form/misc/item_image_helpers.dart';
import 'package:creatispace/pages/items/items_form/misc/todo_item_presentation_classes.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:creatispace/pages/items/items_form/misc/build_context_x.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ItemFormBloc, ItemFormState>(
      listenWhen: (prev, current) =>
          prev.item.images.isFull != current.item.images.isFull,
      listener: (context, state) {
        if (state.item.images.isFull) {
          FlushbarHelper.createInformation(
            message: 'Maximimum Images for item',
            duration: const Duration(seconds: 5),
          ).show(context);
        }
      },
      child: Consumer<ImageItems>(builder: (context, imageItems, child) {
        return ImplicitlyAnimatedReorderableList<ImageItemPrimitive>(
          shrinkWrap: true,
          removeDuration: const Duration(),
          items: imageItems.value.asList(),
          areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
          onReorderFinished: (item, from, to, newItems) {
            context.formItems = newItems.toImmutableList();
            context
                .read<ItemFormBloc>()
                .add(ItemFormEvent.itemsChanged(context.formItems));
          },
          itemBuilder: (context, itemAnimation, item, index) {
            return Reorderable(
                key: ValueKey(item.id),
                builder: (context, dragAnimation, inDrag) {
                  return ScaleTransition(
                    scale: Tween<double>(
                      begin: 1,
                      end: 0.95,
                    ).animate(dragAnimation),
                    child: ImageTile(
                      imageIndex: index,
                      elevation: inDrag ? 8 : 0,
                    ),
                  );
                });
          },
        );
      }),
    );
  }
}

class ImageTile extends HookWidget {
  final int imageIndex;
  final double elevation;

  const ImageTile({@required this.imageIndex, double elevation, Key key})
      : elevation = elevation ?? 0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = context.formItems
        .getOrElse(imageIndex, (_) => ImageItemPrimitive.empty());
    final textEditingController =
        useTextEditingController(text: item.imageName);

    final image = item.url != ""
        ? item.url.startsWith('https://firebasestorage.googleapis.com')
            ? getImages(context, item.url)
            : ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(item.url, fit: BoxFit.cover),
                ),
              )
        : const Icon(Icons.image);

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.white24,
          onTap: () {
            context.formItems = context.formItems.minusElement(item);
            context
                .read<ItemFormBloc>()
                .add(ItemFormEvent.itemsChanged(context.formItems));
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Material(
          elevation: elevation,
          animationDuration: const Duration(milliseconds: 50),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: ListTile(
              leading: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 80,
                  minHeight: 100,
                  maxWidth: 80,
                ),
                child: GestureDetector(
                  onTap: () async {
                    final url = await getImage();
                    context.formItems = context.formItems.map(
                      (listTodo) =>
                          listTodo == item ? item.copyWith(url: url) : listTodo,
                    );
                    context
                        .read<ItemFormBloc>()
                        .add(ItemFormEvent.itemsChanged(context.formItems));
                  },
                  child: image,
                ),
              ),
              trailing: const Handle(
                child: Icon(Icons.list),
              ),
              title: TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Item',
                  counterText: '',
                  border: InputBorder.none,
                ),
                maxLength: ItemImageName.maxLength,
                onChanged: (value) {
                  context.formItems = context.formItems.map(
                    (listItem) => listItem == item
                        ? item.copyWith(imageName: value)
                        : listItem,
                  );
                  context
                      .read<ItemFormBloc>()
                      .add(ItemFormEvent.itemsChanged(context.formItems));
                },
                validator: (_) {
                  return context
                      .read<ItemFormBloc>()
                      .state
                      .item
                      .images
                      .value
                      .fold((f) => null, (itemList) {
                    final result = itemList[imageIndex].imageName.value.fold(
                        (failure) => failure.maybeMap(
                            item: (value) => value.i.maybeMap(
                                invalidImageName: (_) => 'Text cannot be empty',
                                multiline: (_) => 'Has to be in a single line',
                                orElse: () => null),
                            orElse: () => null),
                        (r) => null);
                    final result2 = itemList[imageIndex].url.value.fold(
                        (failure) => failure.maybeMap(
                            item: (value) => value.i.maybeMap(
                                invalidImage: (_) => 'Image Cannot be empty',
                                orElse: () => null),
                            orElse: () => null),
                        (r) => null);
                    if (result2 != null) {
                      return result2;
                    }
                    return result;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
