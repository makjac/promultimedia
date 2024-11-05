import 'package:flutter/material.dart';

class OnboardingStageAction extends StatelessWidget {
  const OnboardingStageAction({super.key, this.onSkip, this.onNext});

  final void Function()? onSkip;
  final void Function()? onNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: onSkip,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white60,
          ),
          child: const Text('Pomiń'),
        ),
        ElevatedButton(
          onPressed: onNext,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 12,
            ),
          ),
          child: const Text('Dalej'),
        ),
      ],
    );
  }
}
