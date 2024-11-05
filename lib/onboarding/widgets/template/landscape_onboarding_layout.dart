import 'package:flutter/material.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_title/onboarding_title.dart';

class LandscapeOnboardingLayout extends StatelessWidget {
  const LandscapeOnboardingLayout({
    required this.stage,
    required this.action,
    super.key,
  });

  final OnboardingStage stage;
  final Widget action;

  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Image.asset(
        stage.imageAsset.assetPath,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: _buildImage(),
        ),
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: OnboardingTitle(elements: stage.titleElements),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: action,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
