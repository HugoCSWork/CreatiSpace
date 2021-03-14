import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/search/i_search_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'search_user_bloc.freezed.dart';
part 'search_user_event.dart';
part 'search_user_state.dart';

@injectable
class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState> {
  final ISearchFacade _iSearchFacade;

  SearchUserBloc(this._iSearchFacade) : super(SearchUserState.initial());

  StreamSubscription<Either<ItemErrorFailure, KtList<UserProfileData>>>
  _searchStreamSubscription;

  @override
  Stream<SearchUserState> mapEventToState(
      SearchUserEvent event,
      ) async* {
    yield* event.map(
        initialized: (e) async* {
          yield state;
        },
        searchReceived: (e) async* {
          yield e.searchOrFailure.fold(
                (f) => SearchUserState.loadFailure(f),
                (search) => SearchUserState.loadSuccess(search),
          );
        },
        search: (e) async* {
          yield const SearchUserState.loadInProgress();
          await _searchStreamSubscription?.cancel();
          _searchStreamSubscription = _iSearchFacade.searchForUsers(e.search).listen(
                  (searchOrFailure) =>
                  add(SearchUserEvent.searchReceived(searchOrFailure))
          );
        }
    );
  }
}
