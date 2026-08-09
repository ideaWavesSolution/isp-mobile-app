import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/auth/logout_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/customer/get_connections_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/customer/get_customer_profile_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/customer/watch_bandwidth_usage_use_case.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    this._getCustomerProfileUseCase,
    this._getConnectionsUseCase,
    this._watchBandwidthUsageUseCase,
    this._logoutUseCase,
    this._logger,
  ) : super(const DashboardState());

  final GetCustomerProfileUseCase _getCustomerProfileUseCase;
  final GetConnectionsUseCase _getConnectionsUseCase;
  final WatchBandwidthUsageUseCase _watchBandwidthUsageUseCase;
  final LogoutUseCase _logoutUseCase;
  final Logger _logger;

  StreamSubscription<List<BandwidthPointEntity>>? _bandwidthSub;

  Future<void> loadDashboard() async {
    emit(state.copyWith(status: BaseStatus.loading()));

    try {
      final results = await Future.wait([
        _getCustomerProfileUseCase.execute(),
        _getConnectionsUseCase.execute(),
      ]);

      final connections = results[1] as List<ConnectionEntity>;
      // Keep the current selection if it still exists (e.g. a refresh after
      // a package change), otherwise default to the first connection.
      final selectedId =
          connections.any((c) => c.id == state.selectedConnectionId)
          ? state.selectedConnectionId
          : (connections.isEmpty ? null : connections.first.id);

      emit(
        state.copyWith(
          status: BaseStatus.success(),
          customer: results[0] as CustomerEntity,
          connections: connections,
          selectedConnectionId: selectedId,
        ),
      );

      if (selectedId != null) {
        _watchBandwidth(selectedId);
      }
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void selectConnection(String connectionId) {
    if (connectionId == state.selectedConnectionId) return;
    emit(
      state.copyWith(selectedConnectionId: connectionId, bandwidth: const []),
    );
    _watchBandwidth(connectionId);
  }

  void _watchBandwidth(String connectionId) {
    unawaited(_bandwidthSub?.cancel());
    _bandwidthSub = _watchBandwidthUsageUseCase
        .execute(connectionId)
        .listen(
          (points) => emit(state.copyWith(bandwidth: points)),
          onError: (Object e) => _logger.e(e),
        );
  }

  Future<void> logout() async {
    emit(state.copyWith(logoutStatus: BaseStatus.loading()));
    try {
      await _logoutUseCase.execute();
      emit(state.copyWith(logoutStatus: BaseStatus.success()));
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(logoutStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }

  @override
  Future<void> close() {
    _bandwidthSub?.cancel();
    return super.close();
  }
}
