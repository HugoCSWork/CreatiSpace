import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/search/i_search_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'search_item_event.dart';
part 'search_item_state.dart';
part 'search_item_bloc.freezed.dart';

@injectable
class SearchItemBloc extends Bloc<SearchItemEvent, SearchItemState> {
  final ISearchFacade _iSearchFacade;

  SearchItemBloc(this._iSearchFacade)
      : super(const SearchItemState.initial());

  StreamSubscription<Either<ItemErrorFailure, KtList<HomeItem>>>
  _searchStreamSubscription;

  @override
  Stream<SearchItemState> mapEventToState(
    SearchItemEvent event,
  ) async* {
    yield* event.map(
        initialized: (e) async* {
          yield state;
        },
        searchReceived: (e) async* {
          yield e.searchOrFailure.fold(
                (f) => SearchItemState.loadFailure(f),
                (search) => SearchItemState.loadSuccess(search),
          );
        },
        search: (e) async* {
          yield const SearchItemState.loadInProgress();
          await _searchStreamSubscription?.cancel();
          _searchStreamSubscription = _iSearchFacade.searchForItems(e.search).listen(
                  (searchOrFailure) =>
                  add(SearchItemEvent.searchReceived(searchOrFailure))
          );
        }
    );
  }
}
