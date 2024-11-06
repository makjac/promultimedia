import 'package:promultimedia/common/enum/image_assets.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';

/// The `OnboardingStageData` class provides a method to retrieve the predefined
/// stages that a user goes through during the onboarding process. Each stage
/// contains title elements and an associated image asset.
class OnboardingStageData {
  /// This method is used to retrieve the predefined stages that a user goes
  /// through during the onboarding process.
  static List<OnboardingStage> getStages() {
    return const [
      OnboardingStage(
        titleElements: [
          OnboardingTitleElement(text: 'Spędzaj czas\n'),
          OnboardingTitleElement(text: 'Kreatywnie', isBold: true),
          OnboardingTitleElement(text: '!'),
        ],
        imageAsset: ImageAsset.onboarding1,
      ),
      OnboardingStage(
        titleElements: [
          OnboardingTitleElement(text: 'Bierz udział\n', isBold: true),
          OnboardingTitleElement(text: 'w wydarzeniach!'),
        ],
        imageAsset: ImageAsset.onboarding2,
      ),
      OnboardingStage(
        titleElements: [
          OnboardingTitleElement(text: 'Poznawaj\n'),
          OnboardingTitleElement(text: 'nieodkryte '),
          OnboardingTitleElement(text: 'szlaki', isBold: true),
          OnboardingTitleElement(text: '!'),
        ],
        imageAsset: ImageAsset.onboarding3,
      ),
      OnboardingStage(
        titleElements: [
          OnboardingTitleElement(text: 'Ustawiaj\n'),
          OnboardingTitleElement(text: 'przypomnienia', isBold: true),
          OnboardingTitleElement(text: '!'),
        ],
        imageAsset: ImageAsset.onboarding4,
      ),
      OnboardingStage(
        titleElements: [
          OnboardingTitleElement(text: 'Bądź '),
          OnboardingTitleElement(text: 'na bieżąco', isBold: true),
          OnboardingTitleElement(text: '!'),
        ],
        imageAsset: ImageAsset.onboarding5,
      ),
      OnboardingStage(
        titleElements: [
          OnboardingTitleElement(text: 'Znajdź '),
          OnboardingTitleElement(text: 'swój rytm', isBold: true),
          OnboardingTitleElement(text: '!'),
        ],
        imageAsset: ImageAsset.onboarding6,
      ),
    ];
  }
}
