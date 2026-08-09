import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/media/media_data_source.dart';
import 'package:isp_mobile_app/data/models/response_model/base/base_response.dart';

@LazySingleton()
class MediaMockDataSource implements MediaDataSource {
  static const _categories = [
    MediaCategoryResponseModel(
      id: 'live_tv',
      type: 'liveTv',
      name: 'Live TV',
      itemCount: 1,
    ),
    MediaCategoryResponseModel(
      id: 'ftp_server',
      type: 'ftpServer',
      name: 'FTP Server',
      itemCount: 1,
    ),
    MediaCategoryResponseModel(
      id: 'news',
      type: 'news',
      name: 'News',
      itemCount: 0,
    ),
    MediaCategoryResponseModel(
      id: 'education',
      type: 'education',
      name: 'Education',
      itemCount: 0,
    ),
  ];

  static const _items = <String, List<MediaItemResponseModel>>{
    'live_tv': [
      MediaItemResponseModel(
        id: 'tv',
        categoryId: 'live_tv',
        name: 'TV',
        description: 'Live TV channel package — news, drama & entertainment.',
      ),
    ],
    'ftp_server': [
      MediaItemResponseModel(
        id: 'circleftp',
        categoryId: 'ftp_server',
        name: 'circleftp',
        description: 'CircleFTP local high-speed file server.',
      ),
    ],
    'news': [],
    'education': [],
  };

  @override
  Future<List<MediaCategoryResponseModel>> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return _categories;
  }

  @override
  Future<List<MediaItemResponseModel>> getItems({
    required String categoryId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 400));
    return _items[categoryId] ?? const [];
  }
}
