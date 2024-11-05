import 'package:flutter/material.dart';
import 'package:promultimedia/common/theme/app_colors.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/widgets/template/landscape_onboarding_layout.dart';
import 'package:promultimedia/onboarding/widgets/template/portrait_onboarding_layout.dart';

class OnboardingViewTemplate extends StatelessWidget {
  const OnboardingViewTemplate({
    required this.stage,
    required this.action,
    super.key,
  });

  final OnboardingStage stage;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: ColoredBox(
        color: AppColors.primaryColor,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (orientation == Orientation.portrait)
              PortraitOnboardingLayout(stage: stage, action: action)
            else
              LandscapeOnboardingLayout(stage: stage, action: action),
          ],
        ),
      ),
    );
  }
}
