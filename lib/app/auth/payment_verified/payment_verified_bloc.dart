import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_verified_event.dart';
part 'payment_verified_state.dart';
part 'payment_verified_bloc.freezed.dart';

@injectable
class PaymentVerifiedBloc extends Bloc<PaymentVerifiedEvent, PaymentVerifiedState> {
  final IAuthFacade _authFacade;

  PaymentVerifiedBloc(this._authFacade)
      : super(const PaymentVerifiedState.initial());

  @override
  Stream<PaymentVerifiedState> mapEventToState(
    PaymentVerifiedEvent event,
  ) async* {
    yield* event.map(
        paymentVerifiedCheckRequested: (e) async* {
          final paymentVerifiedOption = await _authFacade.getPaymentVerifiedUser();
          yield paymentVerifiedOption
              ? const PaymentVerifiedState.authenticated()
              : const PaymentVerifiedState.unauthenticated();
        }
    );
  }
}
