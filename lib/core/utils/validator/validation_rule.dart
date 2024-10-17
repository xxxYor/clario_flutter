part 'email_validator.dart';
part 'password_validator.dart';

abstract class ValidationRule {
  final RegExp regex;
  final String errorText;

  ValidationRule({
    required this.regex,
    required this.errorText,
  });

  bool validate(String? value);

  String? input(String? value);
}
