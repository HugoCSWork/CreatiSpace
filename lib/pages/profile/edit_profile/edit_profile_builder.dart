import 'package:creatispace/app/profile/profile_form/profile_form_bloc.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/background_image.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/description_field.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/profile_image.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/username_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileBuilder extends StatelessWidget {
  final UserProfileData data;

  const EditProfileBuilder({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ProfileFormBloc, ProfileFormState>(
          buildWhen: (prev, current) => prev.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit Profile' : 'Add Profile');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                context.read<ProfileFormBloc>().add(const ProfileFormEvent.saved());
              }),
        ],
      ),
      body: BlocBuilder<ProfileFormBloc,ProfileFormState>(
        buildWhen: (prev, current) =>
          prev.showErrorMessages != current.showErrorMessages,
        builder: (context, state) {
          return Stack(
            children: [
              Form(
                autovalidateMode: state.showErrorMessages,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BackgroundImage(data.backgroundImageURL.getOrCrash()),
                      ProfileUsernameField(),
                      ProfileDescriptionField(),
                    ],
                  ),
                ),
              ),
              ProfileImage(data.profileImageURL.getOrCrash()),
            ],
          );
        },
      ),
    );
  }
}
