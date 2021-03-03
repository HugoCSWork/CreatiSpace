import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/streaming/i_streaming_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'start_stream_event.dart';
part 'start_stream_state.dart';
part 'start_stream_bloc.freezed.dart';

@injectable
class StartStreamBloc extends Bloc<StartStreamEvent, StartStreamState> {
  final IStreamingFacade _iStreamingFacade;
  StartStreamBloc(this._iStreamingFacade) : super(StartStreamState.initial());

  @override
  Stream<StartStreamState> mapEventToState(
    StartStreamEvent event,
  ) async* {
    yield* event.map(
        startStream:  (e) async* {
          yield StartStreamState.loadInProgress();
          var itemIdOrError = await _iStreamingFacade.startStream(e.workshopId);
          add(StartStreamEvent.startStreamResponse(itemIdOrError));
        },

        startStreamResponse: (e) async* {
          yield e.failureOrItem.fold(
                (f) => StartStreamState.loadFailure(f),
                (itemId) => StartStreamState.loadSuccess(itemId),
          );
        },
    );
  }
}
