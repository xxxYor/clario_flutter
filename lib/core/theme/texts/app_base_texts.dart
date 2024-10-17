import 'package:clario_test_flutter/core/theme/texts/app_texts.dart';
import 'package:flutter/material.dart';

class AppBaseTexts extends AppTextsStyle {
  @override
  TextStyle get title => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        height: 1,
      );
  @override
  TextStyle get body => const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        height: 1.3,
      );
  @override
  TextStyle get textfield => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        height: 1,
      );
  @override
  TextStyle get button => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        height: 1,
      );
}
