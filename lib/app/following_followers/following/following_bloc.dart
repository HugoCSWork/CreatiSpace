import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:creatispace/domain/following_followers/i_following_followers_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'following_event.dart';
part 'following_state.dart';
part 'following_bloc.freezed.dart';

@injectable
class FollowingBloc extends Bloc<FollowingEvent, FollowingState> {
  final IFollowingFollowerFacade _iFollowingFollowerFacade;

  FollowingBloc(this._iFollowingFollowerFacade)
      : super(const FollowingState.initial());

  StreamSubscription<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
  _userMessagingStreamSubscription;

  @override
  Stream<FollowingState> mapEventToState(
      FollowingEvent event,
  ) async* {
   yield* event.map(
        watchAllFollowingList: (e) async* {
          yield const FollowingState.loadInProgress();
          await _userMessagingStreamSubscription?.cancel();
          _userMessagingStreamSubscription =
              _iFollowingFollowerFacade.getAllFollowing().listen(
                    (failureOrItems) =>
                    add(FollowingEvent.FollowingListReceived(failureOrItems)),
              );
        },
        FollowingListReceived:(e) async* {
          yield e.failureOrMessages.fold(
                (f) => FollowingState.loadFailure(f),
                (following) => FollowingState.loadSuccess(following),
          );
        },

    );
  }
}
