import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/user/user_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@singleton
class GetUserListUseCase with BaseUseCase<List<UserEntity>> {
  GetUserListUseCase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<List<UserEntity>> execute() => _userRepository.getUserList();
}
