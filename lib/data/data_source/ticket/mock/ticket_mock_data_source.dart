import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/ticket/ticket_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

@LazySingleton()
class TicketMockDataSource implements TicketDataSource {
  final List<TicketResponseModel> _tickets = [];

  @override
  Future<List<TicketResponseModel>> getTickets() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return List.unmodifiable(_tickets);
  }

  @override
  Future<TicketResponseModel> createTicket(
    CreateTicketRequestModel inputModel,
  ) async {
    await Future.delayed(const Duration(milliseconds: 700));
    final ticket = TicketResponseModel(
      id: (_tickets.length + 1).toString(),
      date: DateTime.now(),
      type: inputModel.type,
      issue: inputModel.issue,
      status: 'open',
      createdBy: 'Customer',
    );
    _tickets.insert(0, ticket);
    return ticket;
  }
}
