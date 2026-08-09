import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/core/helper/secure_storage_service.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/remapper/login_entity_to_request.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/auth/auth_repository.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._factory, this._secureStorage);

  final DataSourceFactory _factory;
  final SecureStorageService _secureStorage;

  @override
  Future<void> login({required LoginEntity inputModel}) async {
    ///TODO: Bypass login (remove this)
    /*  await _factory.createAuthDataSource().login(
        inputModel.toRequestModel(),
      );*/
    await _secureStorage.setAccessToken("token");
  }
}
