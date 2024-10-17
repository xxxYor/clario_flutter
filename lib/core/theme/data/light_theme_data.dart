import 'package:clario_test_flutter/core/theme/colors/app_colors.dart';
import 'package:clario_test_flutter/core/theme/texts/app_texts.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData({
  required AppColors colors,
  required AppTextsStyle texts,
}) {
  return ThemeData(
    colorScheme: colors.scheme,
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color?>(Colors.transparent),
        foregroundColor: WidgetStateProperty.all<Color?>(Colors.white),
        shadowColor: WidgetStateProperty.all<Color?>(Colors.transparent),
        shape: WidgetStateProperty.all<OutlinedBorder?>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets?>(
          const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 32,
          ),
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(texts.button),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20,),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.light,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.selected),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.error),
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: colors.light,
      hintStyle: texts.textfield,
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.error, width: 2,),
        borderRadius: BorderRadius.circular(10),
      ),
      errorStyle: texts.body.copyWith(color: colors.error,),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
