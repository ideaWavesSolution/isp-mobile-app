part of '../base/base_response.dart';

@freezed
abstract class MediaCategoryResponseModel with _$MediaCategoryResponseModel {
  const factory MediaCategoryResponseModel({
    required String id,
    required String type,
    required String name,
    required int itemCount,
  }) = _MediaCategoryResponseModel;

  factory MediaCategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaCategoryResponseModelFromJson(json);
}
