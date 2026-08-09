import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/package/package_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class GetPackagesUseCase
    with BaseUseCaseWithParams<List<PackageEntity>, String> {
  GetPackagesUseCase(this._packageRepository);

  final PackageRepository _packageRepository;

  /// [params] is the connection id whose packages/current tier to fetch.
  @override
  Future<List<PackageEntity>> execute(String params) {
    return _packageRepository.getPackages(connectionId: params);
  }
}
