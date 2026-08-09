part of 'media_cubit.dart';

@freezed
sealed class MediaState with _$MediaState {
  const factory MediaState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<MediaCategoryEntity>[]) List<MediaCategoryEntity> categories,
  }) = _MediaState;
}
