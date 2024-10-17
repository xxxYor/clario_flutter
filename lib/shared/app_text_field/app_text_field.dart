import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:clario_test_flutter/shared/app_text_field/app_text_field_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_text_field_password.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(this.params, {super.key});

  final AppTextFieldParams params;

  factory AppTextField.password(AppTextFieldParams params) {
    return AppTextFieldPassword(params);
  }

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return TextFormField(
          style: state.texts.textfield,
          controller: widget.params.controller,
          onChanged: widget.params.onChanged,
          validator: widget.params.validator,
          enabled: widget.params.enabled,
          obscureText: widget.params.obscureText,
          decoration: widget.params.decoration.copyWith(
            hintStyle: state.texts.textfield.copyWith(
              color: state.colors.selected,
            ),
          ),
        );
      },
    );
  }
}
