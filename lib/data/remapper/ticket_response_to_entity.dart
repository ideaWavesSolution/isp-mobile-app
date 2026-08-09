import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/ticket_status.dart';

extension TicketResponseMapper on TicketResponseModel {
  TicketEntity toEntity() {
    return TicketEntity(
      id: id,
      date: date,
      type: type,
      issue: issue,
      status: TicketStatus.values.byName(status),
      createdBy: createdBy,
    );
  }
}
