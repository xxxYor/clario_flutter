import 'package:clario_test_flutter/core/theme/colors/app_colors.dart';
import 'package:clario_test_flutter/core/theme/spacers/app_spacers.dart';
import 'package:clario_test_flutter/core/theme/texts/app_base_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    required AppColors colors,
    required ThemeData data,
    required AppSpacers spacers,
    required AppBaseTexts texts,
  }) : super(ThemeState(
          colors: colors,
          data: data,
          spacers: spacers,
          texts: texts,
        ));
}
