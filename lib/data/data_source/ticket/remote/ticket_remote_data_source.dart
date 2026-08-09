import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/ticket/ticket_data_source.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

/// TODO(api): implement once the real backend is available.
@LazySingleton()
class TicketRemoteDataSource implements TicketDataSource {
  @override
  Future<List<TicketResponseModel>> getTickets() {
    throw UnimplementedError('Remote tickets API not implemented yet');
  }

  @override
  Future<TicketResponseModel> createTicket(
    CreateTicketRequestModel inputModel,
  ) {
    throw UnimplementedError('Remote create-ticket API not implemented yet');
  }
}
