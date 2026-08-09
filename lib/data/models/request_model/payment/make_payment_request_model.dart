part of '../base/base_request.dart';

@freezed
abstract class MakePaymentRequestModel with _$MakePaymentRequestModel {
  const factory MakePaymentRequestModel({
    required double amount,
    required String method,
  }) = _MakePaymentRequestModel;

  factory MakePaymentRequestModel.fromJson(Map<String, dynamic> json) =>
      _$MakePaymentRequestModelFromJson(json);
}
