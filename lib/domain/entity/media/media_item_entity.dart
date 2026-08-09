part of '../base/base_entity.dart';

@freezed
abstract class MediaItemEntity with _$MediaItemEntity {
  const factory MediaItemEntity({
    required String id,
    required String categoryId,
    required String name,
    required String description,
  }) = _MediaItemEntity;
}
