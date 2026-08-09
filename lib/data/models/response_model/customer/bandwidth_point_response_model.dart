part of '../base/base_response.dart';

@freezed
abstract class BandwidthPointResponseModel with _$BandwidthPointResponseModel {
  const factory BandwidthPointResponseModel({
    required DateTime time,
    required double rxBytes,
    required double txBytes,
  }) = _BandwidthPointResponseModel;

  factory BandwidthPointResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BandwidthPointResponseModelFromJson(json);
}
