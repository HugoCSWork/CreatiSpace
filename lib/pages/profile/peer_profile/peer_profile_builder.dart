import 'package:creatispace/app/profile/profile_information_watcher/profile_information_watcher_bloc.dart';
import 'package:creatispace/pages/profile/peer_profile/peer_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeerProfileBuilder extends StatelessWidget {

  final String id;

  const PeerProfileBuilder({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInformationWatcherBloc, ProfileInformationWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
              initial: (_) => Container(),
              loadPeerInProgress: (_) => Center(child: CircularProgressIndicator()),
              loadPeerSuccess: (state) => SingleChildScrollView(
                  child: PeerProfile(
                      data: state.peerProfileData,
                      id: id,
                  )
              ),
              loadPeerFailure: (_) =>  Container(),
              orElse: () => Container()
          );
        },
    );
  }
}
