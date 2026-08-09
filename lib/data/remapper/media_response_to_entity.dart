import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/media_category_type.dart';

extension MediaCategoryResponseMapper on MediaCategoryResponseModel {
  MediaCategoryEntity toEntity() {
    return MediaCategoryEntity(
      id: id,
      type: MediaCategoryType.values.byName(type),
      name: name,
      itemCount: itemCount,
    );
  }
}

extension MediaItemResponseMapper on MediaItemResponseModel {
  MediaItemEntity toEntity() {
    return MediaItemEntity(
      id: id,
      categoryId: categoryId,
      name: name,
      description: description,
    );
  }
}
