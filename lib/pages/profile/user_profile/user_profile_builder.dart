import 'package:creatispace/app/profile/profile_information_watcher/profile_information_watcher_bloc.dart';
import 'package:creatispace/pages/profile/user_profile//user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInformationWatcherBloc, ProfileInformationWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Center(child: CircularProgressIndicator()),
              loadSuccess: (state) => SingleChildScrollView(
                  child: UserProfile(
                      data: state.userProfileData
                  )
              ),
              loadFailure: (_) =>  Container()
          );
        },
    );
  }
}
