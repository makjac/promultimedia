import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_title/onboarding_title.dart';

import '../../../extension/rich_text_containing_finder.dart';

void main() {
  testWidgets('OnboardingTitle displays text elements correctly',
      (WidgetTester tester) async {
    const elements = [
      OnboardingTitleElement(text: 'Welcome', isBold: true),
      OnboardingTitleElement(text: ' to '),
      OnboardingTitleElement(text: 'Promultimedia', isBold: true),
    ];

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OnboardingTitle(elements: elements),
        ),
      ),
    );

    expect(find.richTextContaining('Welcome'), findsOneWidget);
    expect(find.richTextContaining(' to '), findsOneWidget);
    expect(find.richTextContaining('Promultimedia'), findsOneWidget);
  });
}
