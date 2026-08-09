import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

abstract class MediaRepository {
  Future<List<MediaCategoryEntity>> getCategories();

  Future<List<MediaItemEntity>> getItems({required String categoryId});
}
