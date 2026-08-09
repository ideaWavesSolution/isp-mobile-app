part of '../base/base_entity.dart';

@freezed
abstract class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required String id,
    required DateTime date,
    required String type,
    required String issue,
    required TicketStatus status,
    required String createdBy,
  }) = _TicketEntity;
}
