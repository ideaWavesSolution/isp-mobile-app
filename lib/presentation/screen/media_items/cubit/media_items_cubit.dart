import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/media/get_media_items_use_case.dart';

part 'media_items_cubit.freezed.dart';
part 'media_items_state.dart';

@injectable
class MediaItemsCubit extends Cubit<MediaItemsState> {
  MediaItemsCubit(this._getMediaItemsUseCase, this._logger)
    : super(const MediaItemsState());

  final GetMediaItemsUseCase _getMediaItemsUseCase;
  final Logger _logger;

  Future<void> loadItems(String categoryId) async {
    emit(state.copyWith(status: BaseStatus.loading()));
    try {
      final items = await _getMediaItemsUseCase.execute(categoryId);
      emit(state.copyWith(status: BaseStatus.success(), items: items));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
