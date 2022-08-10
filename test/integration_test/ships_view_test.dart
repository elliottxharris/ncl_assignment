import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ncl_assignment/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end to end', () {
    testWidgets('find three buttons', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.byType(ElevatedButton), findsWidgets);
    });

    testWidgets('find correct cards', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final skyButton = find.widgetWithText(ElevatedButton, 'Sky');
      final blissButton = find.widgetWithText(ElevatedButton, 'Bliss');
      final escapeButton = find.widgetWithText(ElevatedButton, 'Escape');
      
      await tester.tap(skyButton);
      await tester.pumpAndSettle();

      final skyCard = find.descendant(of: find.byType(Card), matching: find.textContaining(' Sky'));

      expect(skyCard, findsOneWidget);

      await tester.tap(blissButton);
      await tester.pumpAndSettle();

      final blissCard = find.descendant(of: find.byType(Card), matching: find.textContaining(' Bliss'));

      expect(blissCard, findsOneWidget);

      await tester.tap(escapeButton);
      await tester.pumpAndSettle();

      final escapeCard = find.descendant(of: find.byType(Card), matching: find.textContaining(' Escape'));

      expect(escapeCard, findsOneWidget);
    });
  });
}