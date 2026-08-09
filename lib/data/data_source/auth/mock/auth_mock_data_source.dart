import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/auth/auth_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';

@LazySingleton()
class AuthMockDataSource implements AuthDataSource {
  @override
  Future<String> login(LoginRequestModel inputModel) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (inputModel.ip.trim().isEmpty || inputModel.password.trim().length < 4) {
      throw Exception('Invalid IP or password');
    }
    return 'mock_token_123';
  }

  @override
  Future<void> register(RegisterRequestModel inputModel) async {
    await Future.delayed(const Duration(milliseconds: 700));
  }
}
