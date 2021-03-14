import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:creatispace/domain/following_followers/i_following_followers_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'followers_bloc.freezed.dart';
part 'followers_event.dart';
part 'followers_state.dart';

@injectable
class FollowersBloc extends Bloc<FollowersEvent, FollowersState> {
  final IFollowingFollowerFacade _iFollowingFollowerFacade;

  FollowersBloc(this._iFollowingFollowerFacade)
      : super(const FollowersState.initial());

  StreamSubscription<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
  _userMessagingStreamSubscription;

  @override
  Stream<FollowersState> mapEventToState(
    FollowersEvent event,
  ) async* {
    yield* event.map(
      watchAllFollowersList: (e) async* {
        yield const FollowersState.loadInProgress();
        await _userMessagingStreamSubscription?.cancel();
        _userMessagingStreamSubscription =
            _iFollowingFollowerFacade.getAllFollowers().listen(
                  (failureOrItems) =>
                  add(FollowersEvent.FollowersListReceived(failureOrItems)),
            );
      },
      FollowersListReceived: (e) async* {
        yield e.failureOrMessages.fold(
              (f) => FollowersState.loadFailure(f),
              (followers) => FollowersState.loadSuccess(followers),
        );
      },
    );
  }
}
