import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/package/change_package_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/package/get_packages_use_case.dart';

part 'packages_cubit.freezed.dart';
part 'packages_state.dart';

@injectable
class PackagesCubit extends Cubit<PackagesState> {
  PackagesCubit(
    this._getPackagesUseCase,
    this._changePackageUseCase,
    this._logger,
  ) : super(const PackagesState());

  final GetPackagesUseCase _getPackagesUseCase;
  final ChangePackageUseCase _changePackageUseCase;
  final Logger _logger;

  Future<void> loadPackages(String connectionId) async {
    emit(state.copyWith(status: BaseStatus.loading()));
    try {
      final packages = await _getPackagesUseCase.execute(connectionId);
      emit(state.copyWith(status: BaseStatus.success(), packages: packages));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  Future<void> changePackage({
    required String connectionId,
    required String packageId,
  }) async {
    emit(state.copyWith(changeStatus: BaseStatus.loading()));
    try {
      await _changePackageUseCase.execute(
        ChangePackageParams(connectionId: connectionId, packageId: packageId),
      );
      emit(state.copyWith(changeStatus: BaseStatus.success()));
      await loadPackages(connectionId);
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(changeStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }
}
