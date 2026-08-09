import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/remapper/media_response_to_entity.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/media/media_repository.dart';

@Singleton(as: MediaRepository)
class MediaRepositoryImpl extends MediaRepository {
  MediaRepositoryImpl(this._factory);

  final DataSourceFactory _factory;

  @override
  Future<List<MediaCategoryEntity>> getCategories() async {
    final response = await _factory.createMediaDataSource().getCategories();
    return response.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<MediaItemEntity>> getItems({required String categoryId}) async {
    final response = await _factory.createMediaDataSource().getItems(
      categoryId: categoryId,
    );
    return response.map((e) => e.toEntity()).toList();
  }
}
