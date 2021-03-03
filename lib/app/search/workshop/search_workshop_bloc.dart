import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/search/i_search_facade.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'search_workshop_event.dart';
part 'search_workshop_state.dart';
part 'search_workshop_bloc.freezed.dart';

@injectable
class SearchWorkshopBloc extends Bloc<SearchWorkshopEvent, SearchWorkshopState> {
  final ISearchFacade _iSearchFacade;

  SearchWorkshopBloc(this._iSearchFacade) : super(SearchWorkshopState.initial());

  StreamSubscription<Either<WorkshopErrorFailures, KtList<Workshop>>>
  _searchStreamSubscription;

  @override
  Stream<SearchWorkshopState> mapEventToState(
    SearchWorkshopEvent event,
  ) async* {
    yield* event.map(
        search: (e) async* {
          yield const SearchWorkshopState.loadInProgress();
          await _searchStreamSubscription?.cancel();
          _searchStreamSubscription = _iSearchFacade.searchForWorkshops(e.search).listen(
                  (searchOrFailure) =>
                  add(SearchWorkshopEvent.searchReceived(searchOrFailure))
          );
        },
        searchReceived:  (e) async* {
          yield e.searchOrFailure.fold(
            (f) => SearchWorkshopState.loadFailure(f),
            (search) => SearchWorkshopState.loadSuccess(search),
          );
        },
    );
  }
}
