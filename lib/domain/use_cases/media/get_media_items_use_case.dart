import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/repository/media/media_repository.dart';
import 'package:isp_mobile_app/domain/use_cases/base/base_use_case.dart';

@injectable
class GetMediaItemsUseCase
    with BaseUseCaseWithParams<List<MediaItemEntity>, String> {
  GetMediaItemsUseCase(this._mediaRepository);

  final MediaRepository _mediaRepository;

  @override
  Future<List<MediaItemEntity>> execute(String params) {
    return _mediaRepository.getItems(categoryId: params);
  }
}
