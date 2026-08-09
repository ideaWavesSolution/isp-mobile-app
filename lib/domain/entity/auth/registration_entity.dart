part of '../base/base_entity.dart';

@freezed
abstract class RegistrationEntity with _$RegistrationEntity {
  const factory RegistrationEntity({
    required String fullName,
    required String phone,
    required String address,
    required String packageInterest,
  }) = _RegistrationEntity;
}
