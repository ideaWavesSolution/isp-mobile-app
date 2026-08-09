part of '../base/base_response.dart';

@freezed
abstract class PackageResponseModel with _$PackageResponseModel {
  const factory PackageResponseModel({
    required String id,
    required String name,
    required double priceBdt,
    required String billingCycle,
    required List<String> features,
    @Default(false) bool isCurrent,
  }) = _PackageResponseModel;

  factory PackageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PackageResponseModelFromJson(json);
}
