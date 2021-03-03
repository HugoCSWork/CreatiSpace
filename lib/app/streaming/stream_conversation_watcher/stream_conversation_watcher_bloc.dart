import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/streaming/i_streaming_facade.dart';
import 'package:creatispace/domain/streaming/streaming_message.dart';
import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'stream_conversation_watcher_event.dart';
part 'stream_conversation_watcher_state.dart';
part 'stream_conversation_watcher_bloc.freezed.dart';

@injectable
class StreamConversationWatcherBloc extends Bloc<StreamConversationWatcherEvent, StreamConversationWatcherState> {
  final IStreamingFacade _iStreamingFacade;

  StreamConversationWatcherBloc(this._iStreamingFacade) : super(StreamConversationWatcherState.initial());
  StreamSubscription<Either<String, KtList<StreamingMessage>>>
  _userConversationStreamSubscription;

  @override
  Stream<StreamConversationWatcherState> mapEventToState(
    StreamConversationWatcherEvent event,
  ) async* {
    yield* event.map(
      MessagingListReceived: (e) async* {
        yield e.failureOrMessages.fold(
              (f) => StreamConversationWatcherState.loadFailure(f),
              (messageList) => StreamConversationWatcherState.loadSuccess(messageList),
        );
      },
      watchAllUserConversation: (e) async* {
        yield const StreamConversationWatcherState.loadInProgress();
        await _userConversationStreamSubscription?.cancel();
        _userConversationStreamSubscription =
            _iStreamingFacade.watchAllMessaging(e.hostId, e.workshopId).listen(
                  (failureOrItems) =>
                  add(StreamConversationWatcherEvent.MessagingListReceived(failureOrItems)),
            );
      },
      sendMessage: (e) async* {
        await _iStreamingFacade..addMessage(e.message, e.peerId, e.workshopId);
      },
    );
  }
}
