import 'package:equatable/equatable.dart';
import 'package:promultimedia/common/enum/image_assets.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';

/// The `OnboardingStage` class represents a stage in the onboarding process.
///
/// Each stage consists of a list of title elements and an image asset.
class OnboardingStage extends Equatable {
  /// Creates an `OnboardingStage` with the given title elements and image asset
  const OnboardingStage({
    required this.titleElements,
    required this.imageAsset,
  });

  /// The list of title elements to be displayed for this stage.
  final List<OnboardingTitleElement> titleElements;

  /// The image asset to be displayed for this stage.
  final ImageAsset imageAsset;

  @override
  List<Object?> get props => [titleElements, imageAsset];
}
