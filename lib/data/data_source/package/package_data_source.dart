import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

abstract class PackageDataSource {
  Future<List<PackageResponseModel>> getPackages({
    required String connectionId,
  });

  Future<void> changePackage(ChangePackageRequestModel inputModel);
}
