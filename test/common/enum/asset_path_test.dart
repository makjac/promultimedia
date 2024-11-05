import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/enum/image_assets.dart';

void main() {
  group('ImageAsset', () {
    test('should return correct asset path for onboarding1', () {
      expect(
        ImageAsset.onboarding1.assetPath,
        'assets/images/onboarding_1.png',
      );
    });

    test('should return correct asset path for onboarding2', () {
      expect(
        ImageAsset.onboarding2.assetPath,
        'assets/images/onboarding_2.png',
      );
    });

    test('should return correct asset path for onboarding3', () {
      expect(
        ImageAsset.onboarding3.assetPath,
        'assets/images/onboarding_3.png',
      );
    });

    test('should return correct asset path for onboarding4', () {
      expect(
        ImageAsset.onboarding4.assetPath,
        'assets/images/onboarding_4.png',
      );
    });

    test('should return correct asset path for onboarding5', () {
      expect(
        ImageAsset.onboarding5.assetPath,
        'assets/images/onboarding_5.png',
      );
    });

    test('should return correct asset path for onboarding6', () {
      expect(
        ImageAsset.onboarding6.assetPath,
        'assets/images/onboarding_6.png',
      );
    });
  });
}
