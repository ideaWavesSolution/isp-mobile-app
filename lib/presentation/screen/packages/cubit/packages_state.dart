part of 'packages_cubit.dart';

@freezed
sealed class PackagesState with _$PackagesState {
  const factory PackagesState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus changeStatus,
    @Default(<PackageEntity>[]) List<PackageEntity> packages,
  }) = _PackagesState;
}
