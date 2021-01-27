import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:creatispace/app/profile/profile_form/profile_form_bloc.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/profile/edit_profile/edit_profile_builder.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/background_image.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/description_field.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/profile_image.dart';
import 'package:creatispace/pages/profile/edit_profile/widgets/username_field.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ProfileFormPageScaffold extends StatelessWidget {

  final UserProfileData data;

  const ProfileFormPageScaffold({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileFormBloc>()
            ..add(ProfileFormEvent.initialized(optionOf(data))),
      child: BlocConsumer<ProfileFormBloc, ProfileFormState>(
          listenWhen: (prev, current) {
            return prev.saveFailureOrSuccessOption != current.saveFailureOrSuccessOption;
          },
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
                    () {},
                    (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                          unexpected: (_) =>
                          'Unexpected Error occurred, contact support.',
                          insufficientPermissions: (_) =>
                          'Insufficient Permissions.',
                          notFound: (_) =>
                          'Could not update this item. If this item has not been deleted contact support')).show(
                      context);
                },
                            (_) {
                          ExtendedNavigator.of(context).pop();
                          ExtendedNavigator.of(context).replace(Routes.navigationBar, arguments: NavigationBarArguments(
                                 pos: 4));
                        }
                    )
            );
          },
          buildWhen: (prev, current) => prev.isSaving != current.isSaving,
          builder: (context, state) {
            return Stack(
              children: <Widget>[
                EditProfileBuilder(data: data),
                SavingInProgress(isSaving: state.isSaving)
              ],
            );
          }),

    );
  }
}
