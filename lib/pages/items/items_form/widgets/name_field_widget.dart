import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemNameField extends HookWidget {
  
  const ItemNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ItemFormBloc, ItemFormState>(
      listenWhen: (prev, current) => prev.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.item.name.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Name',
            alignLabelWithHint: true,
            counterText: '',
          ),
          maxLength: 20,
          onChanged: (value) => context.read<ItemFormBloc>().add(ItemFormEvent.nameChanged(value)),
          validator: (_) => context.read<ItemFormBloc>()
            .state.item.name.value
            .fold(
              (failure) => failure.maybeMap(
                item: (value) => value.i.maybeMap(
                  empty: (_) => 'Value Cannot be Empty',
                  invalidName: (_) => 'Length of name must be between 5-30',
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

