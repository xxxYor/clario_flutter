import 'package:clario_test_flutter/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppColorsLight extends AppColors {
  @override
  Color get accent => const Color(0xff4A4E71);

  @override
  Color get primary => const Color(0xff151D51);

  @override
  Color get secondary => const Color(0xff4A4E71);

  @override
  ColorScheme get scheme => ColorScheme.fromSeed(seedColor: Colors.blue);

  @override
  Color get dark => Colors.black;

  @override
  Color get light => Colors.white;

  @override
  Color get selected => const Color(0xff6F91BC);

  @override
  Color get success => const Color(0xff27B274);

  @override
  Color get error => const Color(0xffFF8080);

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
        colors: [
          Color(0xFFF4F9FF),
          Color(0xFFE0EDFB),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(168 * 3.1416 / 180),
      );
}
