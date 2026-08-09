import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/customer/customer_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class GetCustomerProfileUseCase with BaseUseCase<CustomerEntity> {
  GetCustomerProfileUseCase(this._customerRepository);

  final CustomerRepository _customerRepository;

  @override
  Future<CustomerEntity> execute() {
    return _customerRepository.getProfile();
  }
}
