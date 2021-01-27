import 'package:creatispace/app/profile/profile_form/profile_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProfileDescriptionField extends HookWidget {

  @override
  Widget build(BuildContext context) {
  final textEditingController = useTextEditingController();

    return BlocListener<ProfileFormBloc, ProfileFormState>(
        listenWhen: (prev, curr) => prev.isEditing != curr.isEditing,
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
            maxLength: 150,
            maxLines: 5,
            onChanged: (value) => context.read<ProfileFormBloc>().add(ProfileFormEvent.descriptionChanged(value)),
            validator: (_) => context.read<ProfileFormBloc>()
                .state.item.description.value
                .fold(
                    (failure) => failure.maybeMap(
                  profile: (value) => value.i.maybeMap(
                    invalidProfileDescription: (_) => 'Length of description must be between 5-150',
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
