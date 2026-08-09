part of 'media_items_cubit.dart';

@freezed
sealed class MediaItemsState with _$MediaItemsState {
  const factory MediaItemsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<MediaItemEntity>[]) List<MediaItemEntity> items,
  }) = _MediaItemsState;
}
