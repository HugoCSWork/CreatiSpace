import 'package:creatispace/app/profile/profile_form/profile_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProfileUsernameField extends HookWidget {


  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<ProfileFormBloc, ProfileFormState>(
        listenWhen: (prev, curr) => prev.isEditing != curr.isEditing,
        listener: (context, state) {
          textEditingController.text = state.item.username.getOrCrash();
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Username',
              alignLabelWithHint: true,
              counterText: '',
            ),
            maxLength: 15,
            onChanged: (val) => context.read<ProfileFormBloc>().add(ProfileFormEvent.usernameChanged(val)),
            validator: (_) => context.read<ProfileFormBloc>()
                .state.item.username.value
                .fold(
                    (failure) => failure.maybeMap(
                        profile: (value) => value.i.maybeMap(
                            invalidProfileName: (_) => 'Length must be between 6 and 15',
                            orElse: () => 'Unidentifiable Error contact support'
                        ),
                        orElse: () => null
                    ),
                    (_) => null
            ),
          ),
        ),
    );
  }
}
