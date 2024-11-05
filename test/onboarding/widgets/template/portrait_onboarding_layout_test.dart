import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/enum/image_assets.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_title/onboarding_title.dart';
import 'package:promultimedia/onboarding/widgets/template/portrait_onboarding_layout.dart';

import '../../../extension/rich_text_containing_finder.dart';

void main() {
  testWidgets('PortraitOnboardingLayout displays title and action',
      (WidgetTester tester) async {
    const onboardingStage = OnboardingStage(
      imageAsset: ImageAsset.onboarding1,
      titleElements: [
        OnboardingTitleElement(text: 'Welcome'),
      ],
    );
    final actionWidget = ElevatedButton(
      onPressed: () {},
      child: const Text('Get Started'),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PortraitOnboardingLayout(
            stage: onboardingStage,
            action: actionWidget,
          ),
        ),
      ),
    );

    expect(find.byType(OnboardingTitle), findsOneWidget);
    expect(find.richTextContaining('Welcome'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('PortraitOnboardingLayout positions elements correctly',
      (WidgetTester tester) async {
    const onboardingStage = OnboardingStage(
      imageAsset: ImageAsset.onboarding1,
      titleElements: [OnboardingTitleElement(text: 'text')],
    );
    final actionWidget = ElevatedButton(
      onPressed: () {},
      child: const Text('Get Started'),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PortraitOnboardingLayout(
            stage: onboardingStage,
            action: actionWidget,
          ),
        ),
      ),
    );

    final height = tester.getSize(find.byType(PortraitOnboardingLayout)).height;
    final titleFinder = find.byType(OnboardingTitle);
    final actionFinder = find.byType(ElevatedButton);

    expect(tester.getTopLeft(titleFinder).dy, height / 8);
    expect(tester.getBottomLeft(actionFinder).dy, height - height / 10);
  });
}
