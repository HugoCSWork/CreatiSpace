import 'package:creatispace/pages/items/items_overview/widgets/items/card_widgets/card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockBuildContext extends Mock implements BuildContext {}

class TestDescriptionWidget extends StatelessWidget {
  final Widget child;

  const TestDescriptionWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return itemCardDescription(context: context, description: 'random_description');
  }
}


void main() {
  testWidgets('Test item name widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: itemCardName(name: 'random_name', )),
      ),
    );
    final titleFinder = find.text("random_name");
    expect(titleFinder, findsOneWidget);
  });

  testWidgets('Test item description widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: TestDescriptionWidget()
        ),
      ),
    );
    final descriptionFinder = find.text("random_description");
    expect(descriptionFinder, findsOneWidget);
  });

  testWidgets('Test item price widget if > 0 will show price', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: itemCardPrice(price: 5.25)),
      ),
    );
    final itemPriceFinder = find.text("£5.25");
    expect(itemPriceFinder, findsOneWidget);
  });

  testWidgets('Test item price widget if < 0 will show text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
            body: itemCardPrice(price: 0))
      ),
    );
    final itemPriceTextFinder = find.text("Non Purchasable");
    expect(itemPriceTextFinder, findsOneWidget);
  });
}