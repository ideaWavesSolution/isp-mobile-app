import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/media/media_data_source.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

/// TODO(api): implement once the real backend is available.
@LazySingleton()
class MediaRemoteDataSource implements MediaDataSource {
  @override
  Future<List<MediaCategoryResponseModel>> getCategories() {
    throw UnimplementedError('Remote media categories API not implemented yet');
  }

  @override
  Future<List<MediaItemResponseModel>> getItems({required String categoryId}) {
    throw UnimplementedError('Remote media items API not implemented yet');
  }
}
