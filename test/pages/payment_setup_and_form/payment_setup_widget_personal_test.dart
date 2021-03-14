import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_repository.dart';
import 'package:creatispace/pages/payment_setup/steps/personal_step/personal_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';


class MockPaymentSetupRepository extends Mock
    implements PaymentSetupRepository {}
void main() {

  testWidgets('Test personal first name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) => PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PersonalFirstNameField())
          ),
        )
    );
    var txtForm = find.byKey(Key('personal_name'));
    await tester.enterText(txtForm, 'random_text');
    // final titleFinder = find.text("random_username");
    expect(find.text('random_text'), findsOneWidget);
  });

  testWidgets('Test personal last name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) => PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PersonalLastNameField())
          ),
        )
    );
    var txtForm = find.byKey(Key('personal_last_name'));
    await tester.enterText(txtForm, 'random_last_name');
    // final titleFinder = find.text("random_username");
    expect(find.text('random_last_name'), findsOneWidget);
  });

  testWidgets('Test personal last name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) => PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PersonalLastNameField())
          ),
        )
    );
    var txtForm = find.byKey(Key('personal_last_name'));
    await tester.enterText(txtForm, 'random_last_name');
    // final titleFinder = find.text("random_username");
    expect(find.text('random_last_name'), findsOneWidget);
  });


  testWidgets('Test personal phone number widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
              create: (context) => PaymentSetupBloc(MockPaymentSetupRepository()),
              child: Scaffold(body: PersonalPhoneNumber(mode: AutovalidateMode.always))
          ),
        )
    );
    var txtForm = find.byKey(Key('personal_phone_number'));
    await tester.enterText(txtForm, '7484895204');
    // final titleFinder = find.text("random_username");
    expect(find.text('7484895204'), findsOneWidget);
  });

}