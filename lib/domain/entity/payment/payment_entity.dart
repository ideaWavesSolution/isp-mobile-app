part of '../base/base_entity.dart';

@freezed
abstract class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required String id,
    required DateTime date,
    required String month,
    required double amountPaid,
    required PaymentMethod method,
    required String createdBy,
  }) = _PaymentEntity;
}
