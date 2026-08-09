import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:isp_mobile_app/data/data_source/payment/payment_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

@LazySingleton()
class PaymentMockDataSource implements PaymentDataSource {
  final List<PaymentResponseModel> _payments = [
    PaymentResponseModel(
      id: '2',
      date: DateTime(2026, 7, 31, 18, 25),
      month: 'Jul 2026',
      amountPaid: 500,
      method: 'nagad',
      createdBy: 'Customer',
    ),
    PaymentResponseModel(
      id: '1',
      date: DateTime(2026, 6, 22, 18, 25),
      month: 'Jun 2026',
      amountPaid: 500,
      method: 'nagad',
      createdBy: 'Customer',
    ),
  ];

  @override
  Future<List<PaymentResponseModel>> getPaymentHistory() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return List.unmodifiable(_payments);
  }

  @override
  Future<PaymentResponseModel> makePayment(
    MakePaymentRequestModel inputModel,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    final now = DateTime.now();
    final payment = PaymentResponseModel(
      id: (_payments.length + 1).toString(),
      date: now,
      month: DateFormat('MMM yyyy').format(now),
      amountPaid: inputModel.amount,
      method: inputModel.method,
      createdBy: 'Customer',
    );
    _payments.insert(0, payment);
    return payment;
  }
}
