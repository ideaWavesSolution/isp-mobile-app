import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/ticket/ticket_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

class CreateTicketParams {
  const CreateTicketParams({required this.type, required this.issue});

  final String type;
  final String issue;
}

@injectable
class CreateTicketUseCase
    with BaseUseCaseWithParams<TicketEntity, CreateTicketParams> {
  CreateTicketUseCase(this._ticketRepository);

  final TicketRepository _ticketRepository;

  @override
  Future<TicketEntity> execute(CreateTicketParams params) {
    return _ticketRepository.createTicket(
      type: params.type,
      issue: params.issue,
    );
  }
}
