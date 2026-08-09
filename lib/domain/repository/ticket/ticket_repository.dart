import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

abstract class TicketRepository {
  Future<List<TicketEntity>> getTickets();

  Future<TicketEntity> createTicket({
    required String type,
    required String issue,
  });
}
