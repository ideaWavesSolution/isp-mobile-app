part of '../base/base_request.dart';

@freezed
abstract class ChangePackageRequestModel with _$ChangePackageRequestModel {
  const factory ChangePackageRequestModel({
    required String connectionId,
    required String packageId,
  }) = _ChangePackageRequestModel;

  factory ChangePackageRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePackageRequestModelFromJson(json);
}
