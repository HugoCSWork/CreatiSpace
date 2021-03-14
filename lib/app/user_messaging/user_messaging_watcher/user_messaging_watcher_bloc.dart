import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/user_messaging/IUserFacade.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'user_messaging_watcher_bloc.freezed.dart';
part 'user_messaging_watcher_event.dart';
part 'user_messaging_watcher_state.dart';

@injectable
class UserMessagingWatcherBloc
    extends Bloc<UserMessagingWatcherEvent, UserMessagingWatcherState> {
  final IUserFacade _iUserFacade;

  UserMessagingWatcherBloc(this._iUserFacade)
      : super(const UserMessagingWatcherState.initial());

  StreamSubscription<Either<UserErrorFailure, KtList<UserMessaging>>>
      _userMessagingStreamSubscription;

  @override
  Stream<UserMessagingWatcherState> mapEventToState(
    UserMessagingWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllUserMessagingList: (e) async* {
        yield const UserMessagingWatcherState.loadInProgress();
        await _userMessagingStreamSubscription?.cancel();
        _userMessagingStreamSubscription =
            _iUserFacade.GetAllUserMessagesList().listen(
          (failureOrItems) =>
              add(UserMessagingWatcherEvent.MessagingListReceived(failureOrItems)),
        );
      },
      MessagingListReceived: (e) async* {
        yield e.failureOrMessages.fold(
          (f) => UserMessagingWatcherState.loadFailure(f),
          (messageList) => UserMessagingWatcherState.loadSuccess(messageList),
        );
      },
      watchAllUserFollowingList: (e) async* {
        yield const UserMessagingWatcherState.loadInProgress();
        await _userMessagingStreamSubscription?.cancel();
        _userMessagingStreamSubscription =
            _iUserFacade.GetAllUserFollowingList().listen(
                  (failureOrItems) =>
                  add(UserMessagingWatcherEvent.FollowingListReceived(failureOrItems)),
            );
      },
      FollowingListReceived: (e) async* {
        yield e.failureOrMessages.fold(
              (f) => UserMessagingWatcherState.loadFailure(f),
              (messageList) => UserMessagingWatcherState.loadSuccess(messageList),
        );
      },
    );
  }
}
