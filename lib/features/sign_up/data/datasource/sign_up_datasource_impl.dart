import 'package:clario_test_flutter/features/sign_up/data/datasource/sign_up_datasource.dart';
import 'package:clario_test_flutter/features/sign_up/domain/models/sign_up_model.dart';
import 'package:clario_test_flutter/shared/domain/models/app_response.dart';
import 'package:clario_test_flutter/shared/domain/models/user_model.dart';

class SignUpDatasourceImpl implements SignUpDatasource {
  @override
  Future<AppResponse<UserModel>> login(SignUpModel data) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );

    return AppResponse<UserModel>(
      data: UserModel.fromNetwork(
        {
          "id": "-1",
          "email": data.email,
          "password": data.password,
        },
      ),
    );
  }
}
