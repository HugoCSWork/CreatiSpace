import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/auth_bloc.dart';
import 'package:creatispace/app/profile/profile_information_watcher/profile_information_watcher_bloc.dart';
import 'package:creatispace/pages/profile/user_profile//user_profile.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInformationWatcherBloc, ProfileInformationWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
              initial: (_) => Container(),
              loadInProgress: (_) => Center(child: CircularProgressIndicator()),
              loadSuccess: (state) => SingleChildScrollView(
                  child: BlocListener<AuthBloc, AuthState>(listener: (context, state) {
                    state.maybeMap(
                        unauthenticated: (_) {
                          context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
                          ExtendedNavigator.of(context).replace(Routes.signInPage);
                        },
                        orElse: () {});
                  },
                  child: UserProfile(
                    data: state.userProfileData
                    ),
                  ),
              ),
              loadFailure: (_) =>  Container(),
              orElse: () => Container()
          );
        },
    );
  }
}
