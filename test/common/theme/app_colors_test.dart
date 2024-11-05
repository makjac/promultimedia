import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promultimedia/common/theme/app_colors.dart';

void main() {
  group('AppColors', () {
    test('primaryColor should be correct', () {
      expect(AppColors.primaryColor, const Color(0xFF3d6ea6));
    });

    test('elevatedButtonBorderColor should be correct', () {
      expect(AppColors.elevatedButtonBorderColor, Colors.white);
    });

    test('elevatedButtonBackgroundColor should be correct', () {
      expect(AppColors.elevatedButtonBackgroundColor, const Color(0XFF0767b0));
    });

    test('elevatedButtonForegroundColor should be correct', () {
      expect(AppColors.elevatedButtonForegroundColor, Colors.white);
    });
  });
}
