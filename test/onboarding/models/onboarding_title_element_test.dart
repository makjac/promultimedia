import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';

void main() {
  group('OnboardingTitleElement', () {
    test('supports value equality', () {
      expect(
        const OnboardingTitleElement(text: 'Welcome', isBold: true),
        equals(const OnboardingTitleElement(text: 'Welcome', isBold: true)),
      );
    });

    test('props are correct', () {
      expect(
        const OnboardingTitleElement(text: 'Welcome', isBold: true).props,
        equals(['Welcome', true]),
      );
    });

    test('isBold defaults to false', () {
      const element = OnboardingTitleElement(text: 'Welcome');
      expect(element.isBold, isFalse);
    });

    test('can be instantiated with isBold set to true', () {
      const element = OnboardingTitleElement(text: 'Welcome', isBold: true);
      expect(element.isBold, isTrue);
    });
  });
}
