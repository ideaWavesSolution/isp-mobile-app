import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/customer/customer_data_source.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

/// TODO(api): implement once the real backend is available. Until then this
/// throws so staging/production builds fail loudly instead of silently using
/// mock data — swap the method bodies for real Dio/Retrofit calls (or a
/// WebSocket for [watchBandwidthUsage]).
@LazySingleton()
class CustomerRemoteDataSource implements CustomerDataSource {
  @override
  Future<CustomerResponseModel> getProfile() {
    throw UnimplementedError('Remote customer profile API not implemented yet');
  }

  @override
  Future<List<ConnectionResponseModel>> getConnections() {
    throw UnimplementedError('Remote connections API not implemented yet');
  }

  @override
  Stream<List<BandwidthPointResponseModel>> watchBandwidthUsage(
    String connectionId,
  ) {
    throw UnimplementedError(
      'Remote bandwidth usage stream not implemented yet',
    );
  }
}
