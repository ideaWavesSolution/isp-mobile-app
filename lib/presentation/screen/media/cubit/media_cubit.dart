import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/media/get_media_categories_use_case.dart';

part 'media_cubit.freezed.dart';
part 'media_state.dart';

@injectable
class MediaCubit extends Cubit<MediaState> {
  MediaCubit(this._getMediaCategoriesUseCase, this._logger)
    : super(const MediaState());

  final GetMediaCategoriesUseCase _getMediaCategoriesUseCase;
  final Logger _logger;

  Future<void> loadCategories() async {
    emit(state.copyWith(status: BaseStatus.loading()));
    try {
      final categories = await _getMediaCategoriesUseCase.execute();
      emit(
        state.copyWith(status: BaseStatus.success(), categories: categories),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
