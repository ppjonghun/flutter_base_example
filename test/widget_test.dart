import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:example/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('startup redirects to home when signed in', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(
      const ProviderScope(child: ExampleApp()),
    );
    expect(find.text('Splash Page'), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.text('Splash Page'), findsNothing);

    expect(find.text('Splash Page'), findsNothing);

    return;
  });
}
