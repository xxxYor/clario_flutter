import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:clario_test_flutter/features/sign_in/presentation/widgets/sign_in_form.dart';
import 'package:clario_test_flutter/shared/app_spacer/app_spacer.dart';
import 'package:clario_test_flutter/shared/app_texts/app_texts.dart';
import 'package:clario_test_flutter/shared/backgrounds/app_decorated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInCubit cubit = SignInCubit();

    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        body: AppDecoratedBackground(
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 140,
                    ),
                    AppTexts.title("Sign In").secondary,
                    AppSpacer.lg,
                    SignInForm(
                      formKey: cubit.formKey,
                    ),
                    AppSpacer.lg,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppTexts.body("Don’t have an account?"),
                        TextButton(
                          onPressed: () {
                            locator<AppRouter>().replaceNamed('/sign_up');
                          },
                          child: const Text("Sign Up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
