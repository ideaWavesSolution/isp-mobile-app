import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

extension LoginEntityMapper on LoginEntity {
  /// Maps a LoginEntity to a LoginRequestModel
  LoginRequestModel toRequestModel() {
    return LoginRequestModel(ip: ip, password: password);
  }
}

extension RegistrationEntityMapper on RegistrationEntity {
  /// Maps a RegistrationEntity to a RegisterRequestModel
  RegisterRequestModel toRequestModel() {
    return RegisterRequestModel(
      fullName: fullName,
      phone: phone,
      address: address,
      packageInterest: packageInterest,
    );
  }
}
