import 'package:flutter/material.dart';
import 'package:promultimedia/common/theme/app_colors.dart';
import 'package:promultimedia/onboarding/data/onboarding_stage_data.dart';
import 'package:promultimedia/onboarding/models/onboarding_stage.dart';
import 'package:promultimedia/onboarding/service/onboarding_service.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_actions/onboarding_close_action.dart';
import 'package:promultimedia/onboarding/widgets/onboarding_actions/onboarding_stage_action.dart';
import 'package:promultimedia/onboarding/widgets/template/onboarding_view_template.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _pageController;
  late OnboardingService _onboardingService;
  final List<OnboardingStage> stages = OnboardingStageData.getStages();

  @override
  void initState() {
    _pageController = PageController();
    _onboardingService = OnboardingService(context);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> skipOnboarding() async {
    await _onboardingService.markOnboardingCompleted();
    _onboardingService.navigateToHome();
  }

  Widget getOnboardingAction(int index, int stagesLength) {
    if (index != stagesLength - 1) {
      return OnboardingStageAction(
        onNext: nextPage,
        onSkip: skipOnboarding,
      );
    } else {
      return OnboardingCloseAction(
        onClosePressed: skipOnboarding,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: PageView.builder(
        controller: _pageController,
        itemCount: stages.length,
        itemBuilder: (context, index) {
          return OnboardingViewTemplate(
            stage: stages[index],
            action: getOnboardingAction(index, stages.length),
          );
        },
      ),
    );
  }
}
