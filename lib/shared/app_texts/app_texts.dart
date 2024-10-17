import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppTexts extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextStyle Function(ThemeState) baseStyle;

  const AppTexts._(this.text, this.baseStyle, {this.style});

  factory AppTexts.title(String text) {
    return AppTexts._(
      text,
      (state) => state.texts.title,
    );
  }

  factory AppTexts.body(String text) {
    return AppTexts._(
      text,
      (state) => state.texts.body,
    );
  }

  @override
  Widget build(context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Text(
          text,
          style: baseStyle(state).merge(style),
        );
      },
    );
  }

  AppTexts copyWith(TextStyle? newStyle) {
    return AppTexts._(
      text,
      baseStyle,
      style: style?.merge(newStyle) ?? newStyle,
    );
  }

  AppTexts get secondary => copyWith(
        TextStyle(
          color: locator<ThemeCubit>().state.colors.secondary,
        ),
      );

  AppTexts get primary => copyWith(
        TextStyle(
          color: locator<ThemeCubit>().state.colors.primary,
        ),
      );

  AppTexts get success => copyWith(
        TextStyle(
          color: locator<ThemeCubit>().state.colors.success,
        ),
      );

  AppTexts get error => copyWith(
        TextStyle(
          color: locator<ThemeCubit>().state.colors.error,
        ),
      );
}
