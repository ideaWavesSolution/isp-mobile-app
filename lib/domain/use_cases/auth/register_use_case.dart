import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/auth/auth_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class RegisterUseCase with BaseUseCaseWithParams<void, RegistrationEntity> {
  RegisterUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> execute(RegistrationEntity params) {
    return _authRepository.register(inputModel: params);
  }
}
