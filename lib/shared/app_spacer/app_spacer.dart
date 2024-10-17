import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppSpacer {
  static Widget get md => BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return SizedBox(
            width: state.spacers.md,
            height: state.spacers.md,
          );
        },
      );
  static Widget get lg => BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return SizedBox(
            width: state.spacers.lg,
            height: state.spacers.lg,
          );
        },
      );
  static Widget get s => BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return SizedBox(
            width: state.spacers.s,
            height: state.spacers.s,
          );
        },
      );
}
