import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/repository/package/package_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

class ChangePackageParams {
  const ChangePackageParams({
    required this.connectionId,
    required this.packageId,
  });

  final String connectionId;
  final String packageId;
}

@injectable
class ChangePackageUseCase
    with BaseUseCaseWithParams<void, ChangePackageParams> {
  ChangePackageUseCase(this._packageRepository);

  final PackageRepository _packageRepository;

  @override
  Future<void> execute(ChangePackageParams params) {
    return _packageRepository.changePackage(
      connectionId: params.connectionId,
      packageId: params.packageId,
    );
  }
}
