import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/app/profile/profile_actor/profile_actor_bloc.dart';
import 'package:creatispace/app/profile/profile_information_watcher/profile_information_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/profile/peer_profile/peer_profile_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeerProfileScaffold extends StatelessWidget {

  final String id;

  const PeerProfileScaffold({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ProfileInformationWatcherBloc>(
              create: (context) => getIt<ProfileInformationWatcherBloc>()
           ..add(ProfileInformationWatcherEvent
                  .watchPeerProfileInformation(id),
          )),
          BlocProvider<ItemWatcherBloc>(
            create: (context) => getIt<ItemWatcherBloc>()
              ..add(ItemWatcherEvent.watchAllPeerStarted(id)),
          ),
          BlocProvider<ProfileActorBloc>(
              create: (context) => getIt<ProfileActorBloc>())
        ],
        child: PeerProfileBuilder(id: id),
      ),
    );
  }
}
