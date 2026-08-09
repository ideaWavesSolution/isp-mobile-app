import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';

extension PaymentResponseMapper on PaymentResponseModel {
  PaymentEntity toEntity() {
    return PaymentEntity(
      id: id,
      date: date,
      month: month,
      amountPaid: amountPaid,
      method: PaymentMethod.values.byName(method),
      createdBy: createdBy,
    );
  }
}
