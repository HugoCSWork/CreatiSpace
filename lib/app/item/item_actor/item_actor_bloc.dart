import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/i_item_facade.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'item_actor_bloc.freezed.dart';
part 'item_actor_event.dart';
part 'item_actor_state.dart';

@injectable
class ItemActorBloc extends Bloc<ItemActorEvent, ItemActorState> {
  final IItemFacade _iItemFacade;

  ItemActorBloc(this._iItemFacade) : super(const ItemActorState.initial());

  @override
  Stream<ItemActorState> mapEventToState(
    ItemActorEvent event,
  ) async* {
    yield const ItemActorState.actionInProgress();
    final possibleFailure = await _iItemFacade.delete(event.item);
    yield possibleFailure.fold(
      (f) => ItemActorState.deleteFailure(f),
      (_) => const ItemActorState.deleteSuccess(),
    );
  }
}
