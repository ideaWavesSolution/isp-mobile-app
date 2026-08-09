part of 'dashboard_cubit.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus logoutStatus,
    CustomerEntity? customer,
    @Default(<ConnectionEntity>[]) List<ConnectionEntity> connections,
    String? selectedConnectionId,
    @Default(<BandwidthPointEntity>[]) List<BandwidthPointEntity> bandwidth,
  }) = _DashboardState;

  /// The connection currently shown on the dashboard, derived from
  /// [selectedConnectionId].
  ConnectionEntity? get selectedConnection {
    if (selectedConnectionId == null) return null;
    for (final c in connections) {
      if (c.id == selectedConnectionId) return c;
    }
    return null;
  }
}
