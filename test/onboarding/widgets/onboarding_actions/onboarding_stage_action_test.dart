import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_actions/onboarding_stage_action.dart';

void main() {
  testWidgets('OnboardingStageAction renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OnboardingStageAction(
            onSkip: () {},
            onNext: () {},
          ),
        ),
      ),
    );

    expect(find.text('Pomiń'), findsOneWidget);
    expect(find.text('Dalej'), findsOneWidget);
  });

  testWidgets('OnboardingStageAction onSkip callback is called',
      (WidgetTester tester) async {
    var skipCalled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OnboardingStageAction(
            onSkip: () {
              skipCalled = true;
            },
            onNext: () {},
          ),
        ),
      ),
    );

    await tester.tap(find.text('Pomiń'));
    await tester.pump();

    expect(skipCalled, isTrue);
  });

  testWidgets('OnboardingStageAction onNext callback is called',
      (WidgetTester tester) async {
    var nextCalled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OnboardingStageAction(
            onSkip: () {},
            onNext: () {
              nextCalled = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Dalej'));
    await tester.pump();

    expect(nextCalled, isTrue);
  });
}
