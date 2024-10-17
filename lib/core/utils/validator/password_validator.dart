part of 'validation_rule.dart';

class PasswordValidator implements ValidationRule {
  @override
  final String errorText;

  PasswordValidator({
    this.errorText = 'Password is invalid',
  });

  @override
  RegExp get regex => RegExp(r'^(?=.*[A-Z])(?=.*[0-9])(?!.*\s).{8,64}$');

  @override
  bool validate(String? value) {
    if (value == null) {
      return false;
    }

    return regex.hasMatch(value);
  }

  @override
  String? input(String? value) {
    if (value == null) {
      return errorText;
    }

    if (validate(value)) {
      return null;
    }

    return errorText;
  }

  bool isLengthValid(String value) {
    return value.length >= 8 && value.length <= 64 && !value.contains(' ');
  }

  bool hasUppercaseAndLowercase(String value) {
    return value.contains(RegExp(r'[A-Z]')) && value.contains(RegExp(r'[a-z]'));
  }

  bool hasDigit(String value) {
    return value.contains(RegExp(r'[0-9]'));
  }
}
