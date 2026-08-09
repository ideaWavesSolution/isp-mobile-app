import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/remapper/customer_response_to_entity.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/customer/customer_repository.dart';

@Singleton(as: CustomerRepository)
class CustomerRepositoryImpl extends CustomerRepository {
  CustomerRepositoryImpl(this._factory);

  final DataSourceFactory _factory;

  @override
  Future<CustomerEntity> getProfile() async {
    final response = await _factory.createCustomerDataSource().getProfile();
    return response.toEntity();
  }

  @override
  Future<List<ConnectionEntity>> getConnections() async {
    final response = await _factory.createCustomerDataSource().getConnections();
    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Stream<List<BandwidthPointEntity>> watchBandwidthUsage(String connectionId) {
    return _factory
        .createCustomerDataSource()
        .watchBandwidthUsage(connectionId)
        .map((points) => points.map((e) => e.toEntity()).toList());
  }
}
