import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/package/package_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

/// TODO(api): implement once the real backend is available.
@LazySingleton()
class PackageRemoteDataSource implements PackageDataSource {
  @override
  Future<List<PackageResponseModel>> getPackages({
    required String connectionId,
  }) {
    throw UnimplementedError('Remote packages API not implemented yet');
  }

  @override
  Future<void> changePackage(ChangePackageRequestModel inputModel) {
    throw UnimplementedError('Remote change-package API not implemented yet');
  }
}
