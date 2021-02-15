import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'is_verified_event.dart';
part 'is_verified_state.dart';
part 'is_verified_bloc.freezed.dart';

@injectable
class IsVerifiedBloc extends Bloc<IsVerifiedEvent, IsVerifiedState> {
  final IAuthFacade _authFacade;

  IsVerifiedBloc(this._authFacade) : super(const IsVerifiedState.initial());

  @override
  Stream<IsVerifiedState> mapEventToState(
    IsVerifiedEvent event,
  ) async* {
    yield* event.map(
        verifiedCheckRequested: (e) async* {
          final verifiedOption = await _authFacade.getVerifiedUser();
          yield verifiedOption
              ? const IsVerifiedState.authenticated()
              : const IsVerifiedState.unauthenticated();
        },

    );
  }
}
