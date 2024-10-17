
import 'package:clario_test_flutter/features/sign_up/domain/models/sign_up_model.dart';

abstract interface class SignUpRepository {
  Future<void> login(SignUpModel data);
}
