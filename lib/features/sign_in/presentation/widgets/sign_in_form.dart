import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/core/utils/validator/validator.dart';
import 'package:clario_test_flutter/shared/app_elevated_button/app_elevated_button.dart';
import 'package:clario_test_flutter/shared/app_spacer/app_spacer.dart';
import 'package:clario_test_flutter/shared/app_text_field/app_text_field.dart';
import 'package:clario_test_flutter/shared/app_text_field/app_text_field_params.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            AppTextFieldParams(
              validator: AppValidator.email.input,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          AppSpacer.md,
          AppTextField.password(
            AppTextFieldParams(
              validator: AppValidator.password.input,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          AppSpacer.lg,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 37,
            ),
            child: AppElevatedButton(
              onPressed: () {
                final isValid = formKey.currentState!.validate();

                if (isValid) {
                  locator<AppRouter>().replaceNamed('/home');
                }
              },
              child: const Text("Sign In"),
            ),
          ),
        ],
      ),
    );
  }
}
