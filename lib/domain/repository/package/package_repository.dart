import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

abstract class PackageRepository {
  Future<List<PackageEntity>> getPackages({required String connectionId});

  Future<void> changePackage({
    required String connectionId,
    required String packageId,
  });
}
