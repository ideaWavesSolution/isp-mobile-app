import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/remapper/payment_response_to_entity.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/domain/repository/payment/payment_repository.dart';

@Singleton(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {
  PaymentRepositoryImpl(this._factory);

  final DataSourceFactory _factory;

  @override
  Future<List<PaymentEntity>> getPaymentHistory() async {
    final response = await _factory
        .createPaymentDataSource()
        .getPaymentHistory();
    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<PaymentEntity> makePayment({
    required double amount,
    required PaymentMethod method,
  }) async {
    final response = await _factory.createPaymentDataSource().makePayment(
      MakePaymentRequestModel(amount: amount, method: method.name),
    );
    return response.toEntity();
  }
}
