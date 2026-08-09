import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/remapper/ticket_response_to_entity.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/ticket/ticket_repository.dart';

@Singleton(as: TicketRepository)
class TicketRepositoryImpl extends TicketRepository {
  TicketRepositoryImpl(this._factory);

  final DataSourceFactory _factory;

  @override
  Future<List<TicketEntity>> getTickets() async {
    final response = await _factory.createTicketDataSource().getTickets();
    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<TicketEntity> createTicket({
    required String type,
    required String issue,
  }) async {
    final response = await _factory.createTicketDataSource().createTicket(
      CreateTicketRequestModel(type: type, issue: issue),
    );
    return response.toEntity();
  }
}
