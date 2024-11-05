import 'package:flutter/material.dart';
import 'package:promultimedia/common/theme/app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(AppColors.elevatedButtonBackgroundColor),
        foregroundColor:
            WidgetStateProperty.all(AppColors.elevatedButtonForegroundColor),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        side: WidgetStateProperty.all(
          const BorderSide(color: AppColors.elevatedButtonBorderColor),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.white),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 45,
          ),
        ),
      ),
    ),
    primaryColor: AppColors.primaryColor,
  );
}
