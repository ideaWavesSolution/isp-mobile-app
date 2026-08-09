import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/payment/payment_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

/// TODO(api): implement once the real backend is available.
@LazySingleton()
class PaymentRemoteDataSource implements PaymentDataSource {
  @override
  Future<List<PaymentResponseModel>> getPaymentHistory() {
    throw UnimplementedError('Remote payment history API not implemented yet');
  }

  @override
  Future<PaymentResponseModel> makePayment(MakePaymentRequestModel inputModel) {
    throw UnimplementedError('Remote make-payment API not implemented yet');
  }
}
