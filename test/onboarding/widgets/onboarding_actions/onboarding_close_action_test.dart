import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_actions/onboarding_close_action.dart';

void main() {
  testWidgets('OnboardingCloseAction renders correctly',
      (WidgetTester tester) async {
    const key = Key('onboarding_close_action');
    var wasPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OnboardingCloseAction(
            key: key,
            onClosePressed: () {
              wasPressed = true;
            },
          ),
        ),
      ),
    );

    expect(find.byKey(key), findsOneWidget);
    expect(find.text('Zaczynamy!'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(wasPressed, isTrue);
  });

  testWidgets('OnboardingCloseAction onClosePressed is null',
      (WidgetTester tester) async {
    const key = Key('onboarding_close_action');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OnboardingCloseAction(
            key: key,
          ),
        ),
      ),
    );

    expect(find.byKey(key), findsOneWidget);
    expect(find.text('Zaczynamy!'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.byKey(key), findsOneWidget);
    expect(find.text('Zaczynamy!'), findsOneWidget);
  });
}
