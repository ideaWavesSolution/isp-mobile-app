import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/customer_status.dart';

extension CustomerResponseMapper on CustomerResponseModel {
  CustomerEntity toEntity() {
    return CustomerEntity(
      id: id,
      name: name,
      username: username,
      status: CustomerStatus.values.byName(status),
    );
  }
}

extension ConnectionResponseMapper on ConnectionResponseModel {
  ConnectionEntity toEntity() {
    return ConnectionEntity(
      id: id,
      name: name,
      ip: ip,
      status: CustomerStatus.values.byName(status),
      packageName: packageName,
      monthlyBill: monthlyBill,
      balanceDue: balanceDue,
      expireDate: expireDate,
      uploadBytes: uploadBytes,
      downloadBytes: downloadBytes,
      uptime: Duration(seconds: uptimeSeconds),
    );
  }
}

extension BandwidthPointResponseMapper on BandwidthPointResponseModel {
  BandwidthPointEntity toEntity() {
    return BandwidthPointEntity(time: time, rxBytes: rxBytes, txBytes: txBytes);
  }
}
