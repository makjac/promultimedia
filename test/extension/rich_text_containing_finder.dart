import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension RichTextContainingFinder on CommonFinders {
  Finder richTextContaining(Pattern richTextPattern) {
    return byWidgetPredicate((widget) {
      if (widget is RichText) {
        final richTextWidget = widget;

        return richTextWidget.text.toPlainText().contains(richTextPattern);
      }

      return false;
    });
  }
}
