import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/repository/auth/auth_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class LogoutUseCase with BaseUseCase<void> {
  LogoutUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> execute() {
    return _authRepository.logout();
  }
}
