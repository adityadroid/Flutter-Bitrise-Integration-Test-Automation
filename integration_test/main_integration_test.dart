import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_bitrise_integration_test_automation/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test counter app', (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();

    // Verify that the initial counter value is 0
    expect(find.text('0'), findsOneWidget);

    // Tap the "+" button and verify that the counter value increases to 1
    await tester.tap(find.byTooltip('Increment'));
    await tester.pumpAndSettle();
    expect(find.text('1'), findsOneWidget);

    // Tap the "+" button again and verify that the counter value increases to 2
    await tester.tap(find.byTooltip('Increment'));
    await tester.pumpAndSettle();
    expect(find.text('2'), findsOneWidget);
  });
}
