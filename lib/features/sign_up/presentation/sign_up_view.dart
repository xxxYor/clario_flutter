import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/features/sign_up/data/datasource/sign_up_datasource_impl.dart';
import 'package:clario_test_flutter/features/sign_up/data/repositories/sign_up_repository_impl.dart';
import 'package:clario_test_flutter/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:clario_test_flutter/features/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:clario_test_flutter/shared/app_spacer/app_spacer.dart';
import 'package:clario_test_flutter/shared/app_texts/app_texts.dart';
import 'package:clario_test_flutter/shared/backgrounds/app_decorated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpCubit cubit = SignUpCubit(
      repository: SignUpRepositoryImpl(
        datasource: SignUpDatasourceImpl(),
      ),
    );

    return BlocProvider(
      create: (context) => cubit,
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state.loggingSuccess) {
            locator<AppRouter>().replaceNamed('/home');
          }
        },
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
                      AppTexts.title("Sign Up").secondary,
                      AppSpacer.lg,
                      const SignUpForm(),
                      AppSpacer.lg,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppTexts.body("Already have an account?"),
                          BlocBuilder<SignUpCubit, SignUpState>(
                            builder: (context, state) {
                              return TextButton(
                                onPressed: state.isLoading
                                    ? null
                                    : () {
                                        locator<AppRouter>().replaceNamed('/sign_in');
                                      },
                                child: const Text("Sign In"),
                              );
                            },
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
      ),
    );
  }
}
