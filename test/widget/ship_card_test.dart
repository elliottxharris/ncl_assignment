import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ncl_assignment/Model/ship_model.dart';
import 'package:ncl_assignment/Components/ship_card_component.dart';

void main() {
  final Map<String, dynamic> json = {
    'shipName': 'test ship',
    'shipFacts': {
      'passengerCapacity': '2000',
      'crew': '300',
      'inauguralDate': '1999'
    }
  };

  Ship ship = Ship.fromJson(json);

  testWidgets('test text on card', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ShipCard(ship: ship),
      ),
    );

    final nameFinder = find.text('test ship');
    final capacityFinder = find.textContaining('2000');
    final crewFinder = find.textContaining('300');
    final dateFinder = find.textContaining('1999');

    expect(nameFinder, findsOneWidget);
    expect(capacityFinder, findsOneWidget);
    expect(crewFinder, findsOneWidget);
    expect(dateFinder, findsOneWidget);
  });
}
