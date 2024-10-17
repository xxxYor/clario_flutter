// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppTextFieldParams {
  AppTextFieldParams({
    this.decoration = const InputDecoration(),
    this.obscureText = false,
    this.enabled = true,
    this.controller,
    this.validator,
    this.onChanged,
  });

  final InputDecoration decoration;
  final bool obscureText;
  final bool enabled;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  AppTextFieldParams copyWith({
    InputDecoration? decoration,
    bool? obscureText,
    bool? enabled,
    TextEditingController? controller,
    String? Function(String?)? validator,
    Function(String)? onChanged,
  }) {
    return AppTextFieldParams(
      decoration: decoration ?? this.decoration,
      obscureText: obscureText ?? this.obscureText,
      enabled: enabled ?? this.enabled,
      controller: controller ?? this.controller,
      validator: validator ?? this.validator,
      onChanged: onChanged ?? this.onChanged,
    );
  }
}
