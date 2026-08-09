part of '../base/base_entity.dart';

@freezed
abstract class BandwidthPointEntity with _$BandwidthPointEntity {
  const factory BandwidthPointEntity({
    required DateTime time,
    required double rxBytes,
    required double txBytes,
  }) = _BandwidthPointEntity;
}
