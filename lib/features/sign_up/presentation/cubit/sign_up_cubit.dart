import 'package:clario_test_flutter/core/network/exceptions.dart';
import 'package:clario_test_flutter/core/utils/validator/validator.dart';
import 'package:clario_test_flutter/features/sign_up/domain/models/sign_up_model.dart';
import 'package:clario_test_flutter/features/sign_up/domain/repositories/sign_up_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required this.repository,
  }) : super(SignUpState()) {
    init();
  }

  final SignUpRepository repository;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void init() {
    passwordController.addListener(_passwordListener);
  }

  void validatePassword(String? value) {
    if (value == null) {
      return;
    }

    final validator = AppValidator.password;

    emit(state.copyWith(
      lengthIsValid: validator.isLengthValid(value),
      casesIsValid: validator.hasUppercaseAndLowercase(value),
      digitsIsValid: validator.hasDigit(value),
    ));
  }

  void submit() async {
    final bool isValid = formKey.currentState!.validate();

    if (!isValid) {
      return emit(
        state.copyWith(
          isInvalid: true,
        ),
      );
    }

    emit(
      state.copyWith(
        isLoading: true,
        isInvalid: false,
      ),
    );

    try {
      await repository.login(
        SignUpModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );

      emit(
        state.copyWith(
          loggingSuccess: true,
        ),
      );
    } on RestClientException {
      rethrow;
    }

    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }

  void _passwordListener() {
    validatePassword(passwordController.text);
  }

  @override
  Future<void> close() {
    passwordController.removeListener(_passwordListener);
    emailController.dispose();
    passwordController.dispose();

    return super.close();
  }
}
