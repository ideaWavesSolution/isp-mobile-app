part of '../base/base_response.dart';

@freezed
abstract class TicketResponseModel with _$TicketResponseModel {
  const factory TicketResponseModel({
    required String id,
    required DateTime date,
    required String type,
    required String issue,
    required String status,
    required String createdBy,
  }) = _TicketResponseModel;

  factory TicketResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TicketResponseModelFromJson(json);
}
