import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/domain/repository/payment/payment_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

class MakePaymentParams {
  const MakePaymentParams({required this.amount, required this.method});

  final double amount;
  final PaymentMethod method;
}

@injectable
class MakePaymentUseCase
    with BaseUseCaseWithParams<PaymentEntity, MakePaymentParams> {
  MakePaymentUseCase(this._paymentRepository);

  final PaymentRepository _paymentRepository;

  @override
  Future<PaymentEntity> execute(MakePaymentParams params) {
    return _paymentRepository.makePayment(
      amount: params.amount,
      method: params.method,
    );
  }
}
