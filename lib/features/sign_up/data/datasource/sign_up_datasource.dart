
import 'package:clario_test_flutter/features/sign_up/domain/models/sign_up_model.dart';
import 'package:clario_test_flutter/shared/domain/models/app_response.dart';
import 'package:clario_test_flutter/shared/domain/models/user_model.dart';

abstract interface class SignUpDatasource {
  Future<AppResponse<UserModel>> login(SignUpModel data);
}
