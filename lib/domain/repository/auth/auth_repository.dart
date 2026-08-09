import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

abstract class AuthRepository {
  Future<void> login({required LoginEntity inputModel});

  Future<void> register({required RegistrationEntity inputModel});

  Future<void> logout();
}
