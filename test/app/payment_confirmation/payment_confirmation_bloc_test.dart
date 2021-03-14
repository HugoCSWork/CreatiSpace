import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/payment_confirmation/payment_confirmation_bloc.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockPaymentSetupRepository extends Mock implements PaymentSetupRepository {}

final String id = "123";


final itemDto = ItemDto(
  name: '',
  description: '',
  price: 0,
  delivery: 0,
  quantity: 0,
  purchasable: false,
  images: [],
);

Future<Either<ItemErrorFailure, ItemDto>> getReturn(String response) async {

  if(response == "success") {
    return right(itemDto);
  } else if(response == "invalid_permissions") {
    return left(ItemErrorFailure.insufficientPermissions());
  } else {
    return left(ItemErrorFailure.unexpected());
  }
}

void main() {
  MockPaymentSetupRepository mockPaymentSetupRepository;
  setUp(() {
    mockPaymentSetupRepository = MockPaymentSetupRepository();
  });
  group('PaymentConfirmationBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockPaymentSetupRepository.getPurchasedItem(id, id))
              .thenAnswer((_) async => getReturn("success"));
          return PaymentConfirmationBloc(mockPaymentSetupRepository);
        },
        act: (bloc) => bloc.add(PaymentConfirmationEvent.getPaymentItemStarted(id, id)),
        expect: [
          PaymentConfirmationState.loadInProgress(),
          PaymentConfirmationState.loadSuccess(itemDto)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockPaymentSetupRepository.getPurchasedItem(id, id))
              .thenAnswer((_) async => getReturn("invalid_permissions"));
          return PaymentConfirmationBloc(mockPaymentSetupRepository);
        },
        act: (bloc) => bloc.add(PaymentConfirmationEvent.getPaymentItemStarted(id, id)),
        expect: [
          PaymentConfirmationState.loadInProgress(),
          PaymentConfirmationState.loadFailure(ItemErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockPaymentSetupRepository.getPurchasedItem(id, id))
              .thenAnswer((_) async => getReturn("unexpected"));
          return PaymentConfirmationBloc(mockPaymentSetupRepository);
        },
        act: (bloc) => bloc.add(PaymentConfirmationEvent.getPaymentItemStarted(id, id)),
        expect: [
          PaymentConfirmationState.loadInProgress(),
          PaymentConfirmationState.loadFailure(ItemErrorFailure.unexpected())
        ]
    );

  });
}