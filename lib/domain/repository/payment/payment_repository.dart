import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';

abstract class PaymentRepository {
  Future<List<PaymentEntity>> getPaymentHistory();

  Future<PaymentEntity> makePayment({
    required double amount,
    required PaymentMethod method,
  });
}
