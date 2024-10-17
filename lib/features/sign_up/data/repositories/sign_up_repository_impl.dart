import 'package:clario_test_flutter/features/sign_up/data/datasource/sign_up_datasource.dart';
import 'package:clario_test_flutter/features/sign_up/domain/models/sign_up_model.dart';
import 'package:clario_test_flutter/features/sign_up/domain/repositories/sign_up_repository.dart';
import 'package:clario_test_flutter/shared/domain/models/user_model.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  SignUpRepositoryImpl({required this.datasource});

  final SignUpDatasource datasource;

  @override
  Future<UserModel> login(SignUpModel data) async {
    final response = await datasource.login(data);

    return response.data;
  }
}
