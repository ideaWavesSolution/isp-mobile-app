import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';

abstract class AuthDataSource {
  Future<String> login(LoginRequestModel inputModel);

  Future<void> register(RegisterRequestModel inputModel);
}
