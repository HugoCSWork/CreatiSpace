import 'package:creatispace/pages/purchase/more_info/widgets/more_info_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Test more info name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoName('random_name'))
      ),
    );
    expect(find.text('random_name'), findsOneWidget);
  });

  testWidgets('Test more info purchasable widget when not purchasable', (
      WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoPurchasable(false, 0, 0))
      ),
    );
    expect(find.text('Non-Purchasable'), findsOneWidget);
  });

  testWidgets('Test more info purchasable widget when out of stock', (
      WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoPurchasable(true, 0, 2.50))
      ),
    );
    expect(find.text('Out of stock'), findsOneWidget);
  });

  testWidgets('Test more info purchasable widget when in stock', (
      WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoPurchasable(true, 2, 2.50))
      ),
    );
    expect(find.text('£2.50'), findsOneWidget);
  });

  testWidgets('Test more info description widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoDescription('random_description'))
      ),
    );
    expect(find.text('random_description'), findsOneWidget);
  });

  testWidgets('Test more info delivery cost widget when no stock', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoDelivery(0, 2.50))
      ),
    );
    expect(find.text('Delivery - £2.50'), findsNothing);
  });

  testWidgets('Test more info delivery cost widget when in stock', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoDelivery(5, 2.50))
      ),
    );
    expect(find.text('Delivery - £2.50'), findsOneWidget);
  });

  testWidgets('Test more info delivery duration widget when no stock', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoDeliveryDuration(0))
      ),
    );
    expect(find.text('(3 to 5 working days)'), findsNothing);
  });

  testWidgets('Test more info delivery duration widget when in stock', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(body: moreInfoDeliveryDuration(5))
      ),
    );
    expect(find.text('(3 to 5 working days)'), findsOneWidget);
  });
}