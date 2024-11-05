import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/theme/app_colors.dart';
import 'package:promultimedia/common/theme/app_theme.dart';

void main() {
  group('AppTheme', () {
    test('ThemeData should have correct primary color', () {
      final theme = AppTheme.theme;
      expect(theme.primaryColor, AppColors.primaryColor);
    });

    test('ElevatedButtonThemeData should have correct styles', () {
      final theme = AppTheme.theme;
      final elevatedButtonTheme = theme.elevatedButtonTheme.style;

      expect(
        elevatedButtonTheme?.backgroundColor?.resolve({}),
        AppColors.elevatedButtonBackgroundColor,
      );
      expect(
        elevatedButtonTheme?.foregroundColor?.resolve({}),
        AppColors.elevatedButtonForegroundColor,
      );
      expect(elevatedButtonTheme?.textStyle?.resolve({})?.fontSize, 19);
      expect(
        elevatedButtonTheme?.textStyle?.resolve({})?.fontWeight,
        FontWeight.w600,
      );
      expect(
        elevatedButtonTheme?.side?.resolve({})?.color,
        AppColors.elevatedButtonBorderColor,
      );
    });

    test('TextButtonThemeData should have correct styles', () {
      final theme = AppTheme.theme;
      final textButtonTheme = theme.textButtonTheme.style;

      expect(textButtonTheme?.foregroundColor?.resolve({}), Colors.white);
      expect(textButtonTheme?.textStyle?.resolve({})?.fontSize, 18);
      expect(
        textButtonTheme?.textStyle?.resolve({})?.fontWeight,
        FontWeight.w600,
      );
      expect(
        textButtonTheme?.padding?.resolve({}),
        const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
      );
    });
  });
}
