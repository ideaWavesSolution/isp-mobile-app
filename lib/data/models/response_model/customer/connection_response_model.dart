part of '../base/base_response.dart';

@freezed
abstract class ConnectionResponseModel with _$ConnectionResponseModel {
  const factory ConnectionResponseModel({
    required String id,
    required String name,
    required String ip,
    required String status,
    required String packageName,
    required double monthlyBill,
    required double balanceDue,
    required DateTime expireDate,
    required double uploadBytes,
    required double downloadBytes,
    required int uptimeSeconds,
  }) = _ConnectionResponseModel;

  factory ConnectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionResponseModelFromJson(json);
}
