import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

abstract class CustomerRepository {
  Future<CustomerEntity> getProfile();

  /// All ISP lines/connections belonging to the customer.
  Future<List<ConnectionEntity>> getConnections();

  /// A realtime (simulated) stream of bandwidth usage points for the given
  /// [connectionId], used to drive the live-updating usage graph.
  Stream<List<BandwidthPointEntity>> watchBandwidthUsage(String connectionId);
}
