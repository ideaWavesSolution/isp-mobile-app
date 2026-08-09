part of '../base/base_entity.dart';

@freezed
abstract class PackageEntity with _$PackageEntity {
  const factory PackageEntity({
    required String id,
    required String name,
    required double priceBdt,
    required String billingCycle,
    required List<String> features,
    @Default(false) bool isCurrent,
  }) = _PackageEntity;
}
