import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

abstract class CustomerDataSource {
  Future<CustomerResponseModel> getProfile();

  Future<List<ConnectionResponseModel>> getConnections();

  /// A realtime (simulated) stream of bandwidth usage points for the given
  /// [connectionId].
  Stream<List<BandwidthPointResponseModel>> watchBandwidthUsage(
    String connectionId,
  );
}
