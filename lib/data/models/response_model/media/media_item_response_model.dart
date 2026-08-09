part of '../base/base_response.dart';

@freezed
abstract class MediaItemResponseModel with _$MediaItemResponseModel {
  const factory MediaItemResponseModel({
    required String id,
    required String categoryId,
    required String name,
    required String description,
  }) = _MediaItemResponseModel;

  factory MediaItemResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaItemResponseModelFromJson(json);
}
