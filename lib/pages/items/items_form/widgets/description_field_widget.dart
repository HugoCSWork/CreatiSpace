import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemDescriptionField extends HookWidget {
  
  const ItemDescriptionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ItemFormBloc, ItemFormState>(
      listenWhen: (prev, current) => prev.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.item.description.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Description',
            alignLabelWithHint: true,
            counterText: '',
          ),
          maxLength: 100,
          maxLines: 5,
          onChanged: (value) => context.read<ItemFormBloc>().add(ItemFormEvent.descriptionChanged(value)),
          validator: (_) => context.read<ItemFormBloc>()
            .state.item.description.value
            .fold(
              (failure) => failure.maybeMap(
                item: (value) => value.i.maybeMap(
                  empty: (_) => 'Value Cannot be Empty',
                  invalidDescription: (_) => 'Length of description must be between 5-100',
                  orElse: () => null,
                ),
                orElse: () => null,
              ), 
              (_) => null
            ),
        ),
      ),
    );
  }
}

