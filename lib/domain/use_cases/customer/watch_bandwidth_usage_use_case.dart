import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/customer/customer_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class WatchBandwidthUsageUseCase
    with BaseStreamUseCaseWithParams<List<BandwidthPointEntity>, String> {
  WatchBandwidthUsageUseCase(this._customerRepository);

  final CustomerRepository _customerRepository;

  @override
  Stream<List<BandwidthPointEntity>> execute(String params) {
    return _customerRepository.watchBandwidthUsage(params);
  }
}
