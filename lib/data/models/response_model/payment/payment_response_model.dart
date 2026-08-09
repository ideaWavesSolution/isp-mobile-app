part of '../base/base_response.dart';

@freezed
abstract class PaymentResponseModel with _$PaymentResponseModel {
  const factory PaymentResponseModel({
    required String id,
    required DateTime date,
    required String month,
    required double amountPaid,
    required String method,
    required String createdBy,
  }) = _PaymentResponseModel;

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseModelFromJson(json);
}
