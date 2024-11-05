import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/enum/image_assets.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_title/onboarding_title.dart';
import 'package:promultimedia/onboarding/widgets/template/landscape_onboarding_layout.dart';

void main() {
  testWidgets('LandscapeOnboardingLayout displays image and title correctly',
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
          body: LandscapeOnboardingLayout(
            stage: onboardingStage,
            action: actionWidget,
          ),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(OnboardingTitle), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
  });
}
