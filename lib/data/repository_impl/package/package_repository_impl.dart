import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/remapper/package_response_to_entity.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/package/package_repository.dart';

@Singleton(as: PackageRepository)
class PackageRepositoryImpl extends PackageRepository {
  PackageRepositoryImpl(this._factory);

  final DataSourceFactory _factory;

  @override
  Future<List<PackageEntity>> getPackages({
    required String connectionId,
  }) async {
    final response = await _factory.createPackageDataSource().getPackages(
      connectionId: connectionId,
    );
    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> changePackage({
    required String connectionId,
    required String packageId,
  }) {
    return _factory.createPackageDataSource().changePackage(
      ChangePackageRequestModel(
        connectionId: connectionId,
        packageId: packageId,
      ),
    );
  }
}
