import 'package:flutter/material.dart';

class OnboardingCloseAction extends StatelessWidget {
  const OnboardingCloseAction({super.key, this.onClosePressed});

  final void Function()? onClosePressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClosePressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 15,
        ),
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: const Text('Zaczynamy!'),
    );
  }
}
