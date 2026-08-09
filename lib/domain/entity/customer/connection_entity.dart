part of '../base/base_entity.dart';

/// A single ISP line/connection belonging to the customer. A customer can
/// have more than one (e.g. home + office), switchable via the "Select
/// connection" dropdown on the dashboard.
@freezed
abstract class ConnectionEntity with _$ConnectionEntity {
  const factory ConnectionEntity({
    required String id,
    required String name,
    required String ip,
    required CustomerStatus status,
    required String packageName,
    required double monthlyBill,
    required double balanceDue,
    required DateTime expireDate,
    required double uploadBytes,
    required double downloadBytes,
    required Duration uptime,
  }) = _ConnectionEntity;
}
