part of '../base/base_entity.dart';

@freezed
abstract class MediaCategoryEntity with _$MediaCategoryEntity {
  const factory MediaCategoryEntity({
    required String id,
    required MediaCategoryType type,
    required String name,
    required int itemCount,
  }) = _MediaCategoryEntity;
}
