import 'package:flutter/material.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_title/onboarding_title.dart';

class PortraitOnboardingLayout extends StatelessWidget {
  const PortraitOnboardingLayout({
    required this.stage,
    required this.action,
    super.key,
  });

  final OnboardingStage stage;
  final Widget action;

  Widget _buildImage() {
    return Positioned.fill(
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          stage.imageAsset.assetPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
          top: height / 8,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: OnboardingTitle(elements: stage.titleElements),
          ),
        ),
        _buildImage(),
        Positioned(
          bottom: height / 10,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: action,
          ),
        ),
      ],
    );
  }
}
