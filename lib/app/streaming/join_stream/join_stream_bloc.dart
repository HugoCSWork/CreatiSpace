import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/streaming/i_streaming_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'join_stream_event.dart';
part 'join_stream_state.dart';
part 'join_stream_bloc.freezed.dart';

@injectable
class JoinStreamBloc extends Bloc<JoinStreamEvent, JoinStreamState> {
  final IStreamingFacade _iStreamingFacade;
  JoinStreamBloc(this._iStreamingFacade) : super(JoinStreamState.initial());

  @override
  Stream<JoinStreamState> mapEventToState(
    JoinStreamEvent event,
  ) async* {
    yield* event.map(
      joinStream:  (e) async* {
        yield JoinStreamState.loadInProgress();
        var itemIdOrError = await _iStreamingFacade.joinStream(e.workshopId);
        add(JoinStreamEvent.joinStreamResponse(itemIdOrError));
      },

      joinStreamResponse: (e) async* {
        yield e.failureOrItem.fold(
              (f) => JoinStreamState.loadFailure(f),
              (itemId) => JoinStreamState.loadSuccess(itemId),
        );
      },
    );
  }
}
