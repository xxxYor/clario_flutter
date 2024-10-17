import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/core/theme/colors/app_light_colors.dart';
import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:clario_test_flutter/core/theme/data/light_theme_data.dart';
import 'package:clario_test_flutter/core/theme/spacers/app_base_spacers.dart';
import 'package:clario_test_flutter/core/theme/texts/app_base_texts.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupServiceLocator() async {
  locator.registerSingleton<AppRouter>(AppRouter());
  locator.registerSingleton<ThemeCubit>(
    ThemeCubit(
      colors: AppColorsLight(),
      spacers: AppBaseSpacers(),
      texts: AppBaseTexts(),
      data: lightThemeData(
        colors: AppColorsLight(),
        texts: AppBaseTexts(),
      ),
    ),
  );
}
