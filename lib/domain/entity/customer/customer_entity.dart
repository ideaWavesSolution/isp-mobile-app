part of '../base/base_entity.dart';

@freezed
abstract class CustomerEntity with _$CustomerEntity {
  const factory CustomerEntity({
    required String id,
    required String name,
    required String username,
    required CustomerStatus status,
  }) = _CustomerEntity;
}
