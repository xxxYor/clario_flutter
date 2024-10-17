import 'package:flutter/material.dart';

abstract class AppColors {
  ColorScheme get scheme;
  Color get primary;
  Color get secondary;
  Color get accent;
  Color get dark;
  Color get light;
  Color get selected;
  Color get error;
  Color get success;
  LinearGradient get backgroundGradient;
}
