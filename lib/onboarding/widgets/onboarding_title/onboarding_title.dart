import 'package:flutter/material.dart';
import 'package:promultimedia/onboarding/models/onboarding_title_element.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({required this.elements, super.key});

  final List<OnboardingTitleElement> elements;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: elements.map((element) {
          return TextSpan(
            text: element.text,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: element.isBold ? FontWeight.bold : null,
              height: 1.3,
            ),
          );
        }).toList(),
      ),
    );
  }
}
