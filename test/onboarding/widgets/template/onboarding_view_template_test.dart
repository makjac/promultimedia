// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/enum/image_assets.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';
import 'package:promultimedia/onboarding/widgets/template/landscape_onboarding_layout.dart';
import 'package:promultimedia/onboarding/widgets/template/onboarding_view_template.dart';
import 'package:promultimedia/onboarding/widgets/template/portrait_onboarding_layout.dart';

void main() {
  testWidgets(
      'OnboardingViewTemplate displays PortraitOnboardingLayout in portrait mode',
      (WidgetTester tester) async {
    const stage = OnboardingStage(
      imageAsset: ImageAsset.onboarding1,
      titleElements: [OnboardingTitleElement(text: 'text')],
    );
    final action = Container();

    await tester.pumpWidget(
      MaterialApp(
        home: MediaQuery(
          data: const MediaQueryData(size: Size(600, 800)), // Portrait mode
          child: OnboardingViewTemplate(stage: stage, action: action),
        ),
      ),
    );

    expect(find.byType(PortraitOnboardingLayout), findsOneWidget);
    expect(find.byType(LandscapeOnboardingLayout), findsNothing);
  });

  testWidgets(
      'OnboardingViewTemplate displays LandscapeOnboardingLayout in landscape mode',
      (WidgetTester tester) async {
    const stage = OnboardingStage(
      imageAsset: ImageAsset.onboarding1,
      titleElements: [OnboardingTitleElement(text: 'text')],
    );
    final action = Container();

    await tester.pumpWidget(
      MaterialApp(
        home: MediaQuery(
          data: const MediaQueryData(size: Size(800, 600)), // Landscape mode
          child: OnboardingViewTemplate(stage: stage, action: action),
        ),
      ),
    );

    expect(find.byType(LandscapeOnboardingLayout), findsOneWidget);
    expect(find.byType(PortraitOnboardingLayout), findsNothing);
  });
}
