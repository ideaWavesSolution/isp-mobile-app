part of '../base/base_response.dart';

@freezed
abstract class CustomerResponseModel with _$CustomerResponseModel {
  const factory CustomerResponseModel({
    required String id,
    required String name,
    required String username,
    required String status,
  }) = _CustomerResponseModel;

  factory CustomerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseModelFromJson(json);
}
