import 'package:clario_test_flutter/core/utils/validator/validator.dart';
import 'package:clario_test_flutter/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:clario_test_flutter/shared/app_elevated_button/app_elevated_button.dart';
import 'package:clario_test_flutter/shared/app_spacer/app_spacer.dart';
import 'package:clario_test_flutter/shared/app_text_field/app_text_field.dart';
import 'package:clario_test_flutter/shared/app_text_field/app_text_field_params.dart';
import 'package:clario_test_flutter/shared/app_texts/app_texts.dart';
import 'package:clario_test_flutter/shared/loaders/app_button_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignUpCubit bloc = BlocProvider.of<SignUpCubit>(context);

    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Form(
          key: bloc.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                AppTextFieldParams(
                  controller: bloc.emailController,
                  enabled: !state.isLoading,
                  validator: AppValidator.email.input,
                  onChanged: (value) {
                    if (state.isInvalid) {
                      bloc.formKey.currentState!.validate();
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ),
              AppSpacer.md,
              AppTextField.password(
                AppTextFieldParams(
                  controller: bloc.passwordController,
                  enabled: !state.isLoading,
                  validator: AppValidator.password.input,
                  onChanged: (value) {
                    if (state.isInvalid) {
                      bloc.formKey.currentState!.validate();
                    }
                  },
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(fontSize: 0),
                    hintText: 'Create your password',
                  ),
                ),
              ),
              AppSpacer.md,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.lengthIsValid
                        ? AppTexts.body("8 characters or more (no spaces)").success
                        : state.isInvalid
                            ? AppTexts.body("8 characters or more (no spaces)").error
                            : AppTexts.body("8 characters or more (no spaces)").primary,
                    const SizedBox(
                      height: 4,
                    ),
                    state.casesIsValid
                        ? AppTexts.body("Uppercase and lowercase letters").success
                        : state.isInvalid
                            ? AppTexts.body("Uppercase and lowercase letters").error
                            : AppTexts.body("Uppercase and lowercase letters").primary,
                    const SizedBox(
                      height: 4,
                    ),
                    state.digitsIsValid
                        ? AppTexts.body("At least one digit").success
                        : state.isInvalid
                            ? AppTexts.body("At least one digit").error
                            : AppTexts.body("At least one digit").primary,
                  ],
                ),
              ),
              AppSpacer.lg,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 37,
                ),
                child: AppElevatedButton(
                  onPressed: state.isLoading
                      ? null
                      : () {
                          bloc.submit();
                        },
                  child: state.isLoading
                      ? const Center(
                          child: AppButtonLoader(),
                        )
                      : const Text("Sign Up"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
