import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

extension PackageResponseMapper on PackageResponseModel {
  PackageEntity toEntity() {
    return PackageEntity(
      id: id,
      name: name,
      priceBdt: priceBdt,
      billingCycle: billingCycle,
      features: features,
      isCurrent: isCurrent,
    );
  }
}
