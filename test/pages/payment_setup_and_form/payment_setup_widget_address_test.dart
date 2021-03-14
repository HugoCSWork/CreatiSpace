import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_repository.dart';
import 'package:creatispace/pages/payment_setup/steps/address_step/address_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockPaymentSetupRepository extends Mock
    implements PaymentSetupRepository {}

void main() {
  testWidgets('Test address home number widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: AddressHouseNumberField())
          ),
        )
    );
    var txtForm = find.byKey(Key('address_home_number'));
    await tester.enterText(txtForm, '4');
    expect(find.text('4'), findsOneWidget);
  });

  testWidgets('Test address postcode widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: AddressPostcodeField())
          ),
        )
    );
    var txtForm = find.byKey(Key('address_postcode'));
    await tester.enterText(txtForm, 'TS1 21B');
    expect(find.text('TS1 21B'), findsOneWidget);
  });

  testWidgets('Test address line 1 widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: AddressLineOneField(lineOne: null,))
          ),
        )
    );
    var txtForm = find.byKey(Key('address_line_one'));
    await tester.enterText(txtForm, 'test line one');
    expect(find.text('test line one'), findsOneWidget);
  });

  testWidgets('Test address line 2 widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: AddressLineTwoField(lineTwo: null,))
          ),
        )
    );
    var txtForm = find.byKey(Key('address_line_two'));
    await tester.enterText(txtForm, 'test line two');
    expect(find.text('test line two'), findsOneWidget);
  });

  testWidgets('Test address city widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: AddressCityField(city: null,))
          ),
        )
    );
    var txtForm = find.byKey(Key('address_city'));
    await tester.enterText(txtForm, 'test city');
    expect(find.text('test city'), findsOneWidget);
  });

  testWidgets('Test address county widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) =>
                  PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: AddressCountyField(county: null,))
          ),
        )
    );
    var txtForm = find.byKey(Key('address_county'));
    await tester.enterText(txtForm, 'test county');
    expect(find.text('test county'), findsOneWidget);
  });
}