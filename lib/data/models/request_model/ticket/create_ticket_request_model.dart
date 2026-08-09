part of '../base/base_request.dart';

@freezed
abstract class CreateTicketRequestModel with _$CreateTicketRequestModel {
  const factory CreateTicketRequestModel({
    required String type,
    required String issue,
  }) = _CreateTicketRequestModel;

  factory CreateTicketRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketRequestModelFromJson(json);
}
