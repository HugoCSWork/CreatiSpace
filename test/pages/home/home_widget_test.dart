import 'package:creatispace/pages/home/widgets/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test home username widget', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: homePostUsername(context: null, username: 'random_username',  id: 'random_id')),
        ),
    );
    final titleFinder = find.text("random_username");
    expect(titleFinder, findsOneWidget);
  });

  testWidgets('Test home item name widget', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: homePostItemName(name: 'random_item_name')),
      ),
    );
    final itemNameFinder = find.text("random_item_name");
    expect(itemNameFinder, findsOneWidget);
  });

  testWidgets('Test home item description widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: homePostItemDescription(description: 'random_description')),
      ),
    );
    final descriptionFinder = find.text("random_description");
    expect(descriptionFinder, findsOneWidget);
  });

  testWidgets('Test home item displays price if is purchasable widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: homePostIsPurchasable(isPurchasable: true, price: 2.55)),
      ),
    );
    final priceFinder = find.text("£2.55");
    expect(priceFinder, findsOneWidget);
  });

  testWidgets('Test home item displays Non-Purchasable if purchasable is not purchasable', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: homePostIsPurchasable(isPurchasable: false, price: 0)),
      ),
    );
    final priceFinder = find.text("Non-Purchasable");
    expect(priceFinder, findsOneWidget);
  });

}