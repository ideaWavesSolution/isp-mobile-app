import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/payment/payment_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class GetPaymentHistoryUseCase with BaseUseCase<List<PaymentEntity>> {
  GetPaymentHistoryUseCase(this._paymentRepository);

  final PaymentRepository _paymentRepository;

  @override
  Future<List<PaymentEntity>> execute() {
    return _paymentRepository.getPaymentHistory();
  }
}
