import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/ticket/ticket_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class GetTicketsUseCase with BaseUseCase<List<TicketEntity>> {
  GetTicketsUseCase(this._ticketRepository);

  final TicketRepository _ticketRepository;

  @override
  Future<List<TicketEntity>> execute() {
    return _ticketRepository.getTickets();
  }
}
