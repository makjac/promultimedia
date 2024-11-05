import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/enum/image_assets.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';

void main() {
  group('OnboardingStage', () {
    test('supports value equality', () {
      final titleElements = [const OnboardingTitleElement(text: 'text_1')];
      const imageAsset = ImageAsset.onboarding1;
      expect(
        OnboardingStage(titleElements: titleElements, imageAsset: imageAsset),
        OnboardingStage(titleElements: titleElements, imageAsset: imageAsset),
      );
    });

    test('props are correct', () {
      final titleElements = [const OnboardingTitleElement(text: 'text_1')];
      const imageAsset = ImageAsset.onboarding1;
      final onboardingStage = OnboardingStage(
        titleElements: titleElements,
        imageAsset: imageAsset,
      );
      expect(onboardingStage.props, [titleElements, imageAsset]);
    });
  });
}
