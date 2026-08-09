import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

abstract class MediaDataSource {
  Future<List<MediaCategoryResponseModel>> getCategories();

  Future<List<MediaItemResponseModel>> getItems({required String categoryId});
}
