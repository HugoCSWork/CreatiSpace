import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_repository.dart';
import 'package:creatispace/pages/payment_setup/steps/payment_step/payment_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';


class MockPaymentSetupRepository extends Mock
    implements PaymentSetupRepository {}
void main() {
  testWidgets('Test payment name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PaymentCardNameField())
          ),
        )
    );
    var txtForm = find.byKey(Key('payment_name'));
    await tester.enterText(txtForm, 'card_name');
    expect(find.text('card_name'), findsOneWidget);
  });

  testWidgets('Test payment number widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PaymentCardNumberField())
          ),
        )
    );
    var txtForm = find.byKey(Key('payment_card'));
    await tester.enterText(txtForm, 'card_number');
    expect(find.text('card_number'), findsOneWidget);
  });

  testWidgets('Test payment sort code widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PaymentSortCodeField())
          ),
        )
    );
    var txtForm = find.byKey(Key('payment_sort_code'));
    await tester.enterText(txtForm, 'card_sort_code');
    expect(find.text('card_sort_code'), findsOneWidget);
  });
}