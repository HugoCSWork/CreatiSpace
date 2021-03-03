import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:creatispace/app/streaming/join_stream/join_stream_bloc.dart';
import 'package:creatispace/app/streaming/start_stream/start_stream_bloc.dart';
import 'package:creatispace/app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/streaming/streaming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreamingAudienceScaffold extends StatelessWidget {
  final String workshopId;
  final String hostId;

  const StreamingAudienceScaffold({Key key, this.workshopId, this.hostId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<JoinStreamBloc>()
              ..add(JoinStreamEvent.joinStream(workshopId)),
          ),
          BlocProvider(
              create: (context) => getIt<StreamConversationWatcherBloc>()
                  ..add(StreamConversationWatcherEvent.watchAllUserConversation(hostId, workshopId)),
          ),
        ],
        child: BlocBuilder<JoinStreamBloc, JoinStreamState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => Container(),
                loadSuccess: (state) {
                  return Scaffold(
                    body: Streaming(
                      channelId: state.streamId,
                      role: ClientRole.Audience,
                      channelName: workshopId,
                      hostId: hostId,
                    ),
                  );
                },
                loadFailure: (_) => Container()
            );
          },
        ),
    );
  }
}
