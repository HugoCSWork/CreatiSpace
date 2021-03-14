import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/streaming/i_streaming_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'end_stream_bloc.freezed.dart';
part 'end_stream_event.dart';
part 'end_stream_state.dart';

@injectable
class EndStreamBloc extends Bloc<EndStreamEvent, EndStreamState> {
  final IStreamingFacade _iStreamingFacade;
  EndStreamBloc(this._iStreamingFacade) : super(EndStreamState.initial());

  @override
  Stream<EndStreamState> mapEventToState(
    EndStreamEvent event,
  ) async* {
    yield* event.map(
      endStream:  (e) async* {
        yield EndStreamState.loadInProgress();
        var itemIdOrError = await _iStreamingFacade.endStream(e.workshopId);
        add(EndStreamEvent.endStreamResponse(itemIdOrError));
      },

      endStreamResponse: (e) async* {
        yield e.failureOrItem.fold(
              (f) => EndStreamState.loadFailure(f),
              (itemId) => EndStreamState.loadSuccess(),
        );
      },
    );
  }
}
