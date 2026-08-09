import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUserList();

  Future<UserEntity> getUserById({required String userId});
}
