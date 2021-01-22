import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/user_messaging/IUserFacade.dart';
import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'user_conversation_event.dart';
part 'user_conversation_state.dart';
part 'user_conversation_bloc.freezed.dart';

@injectable
class UserConversationBloc extends Bloc<UserConversationEvent, UserConversationState> {
  final IUserFacade _iUserFacade;

  UserConversationBloc(this._iUserFacade)
      : super(const UserConversationState.initial());

  StreamSubscription<Either<UserErrorFailure, KtList<UserConversation>>>
  _userConversationStreamSubscription;



  @override
  Stream<UserConversationState> mapEventToState(
    UserConversationEvent event,
  ) async* {
    yield* event.map(
        MessagingListReceived: (e) async* {
          yield e.failureOrMessages.fold(
                (f) => UserConversationState.loadFailure(f),
                (messageList) => UserConversationState.loadSuccess(messageList),
          );
        },
        watchAllUserConversation: (e) async* {
          yield const UserConversationState.loadInProgress();
          await _userConversationStreamSubscription?.cancel();
          _userConversationStreamSubscription =
              _iUserFacade.GetAllUserMessages(e.peerId, e.peerName).listen(
                    (failureOrItems) =>
                    add(UserConversationEvent.MessagingListReceived(failureOrItems)),
              );
        },
        // TODO Move sending message to its own form bloc to do correct validation
        sendMessage: (e) async* {
          await _iUserFacade.sendMessage(peerId: e.peerId, message: e.message, type: e.type);
        },
        deleteConversation: (e) async* {
          await _iUserFacade.deleteConversation(peerId: e.peerId);
        }
    );
  }
}