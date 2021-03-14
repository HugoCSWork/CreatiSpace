import 'package:creatispace/pages/items/workshop_details/widgets/workshop_detail_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test workshop details name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: workshopDetailsName(name: 'random_name'))
          ),
    );
    expect(find.text('random_name'), findsOneWidget);
  });

  testWidgets('Test workshop details description widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: workshopDetailsDescription(description: 'random_description'))
      ),
    );
    expect(find.text('random_description'), findsOneWidget);
  });

  testWidgets('Test workshop details requirement widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: workshopDetailsRequirements(requirements: 'random_requirements'))
      ),
    );
    expect(find.text('random_requirements'), findsOneWidget);
  });

  testWidgets('Test workshop details date widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: Row(
            children: [
              workshopDetailsDate(date: '2025-02-02'),
            ],
          ))
      ),
    );
    expect(find.text('2025-02-02'), findsOneWidget);
  });

  testWidgets('Test workshop details time widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: Row(
            children: [
              workshopDetailsTime(time: '15:30'),
            ],
          ))
      ),
    );
    expect(find.text('15:30'), findsOneWidget);
  });

  testWidgets('Test workshop details duration widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: Row(
            children: [
              workshopDetailsDuration(duration: 30),
            ],
          ))
      ),
    );
    expect(find.text('30 Minutes'), findsOneWidget);
  });

  testWidgets('Test workshop price duration widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: Row(
            children: [
              workshopDetailsPrice(price: 2.50),
            ],
          ))
      ),
    );
    expect(find.text('£2.50'), findsOneWidget);
  });

}