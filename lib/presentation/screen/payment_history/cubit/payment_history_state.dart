part of 'payment_history_cubit.dart';

@freezed
sealed class PaymentHistoryState with _$PaymentHistoryState {
  const factory PaymentHistoryState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<PaymentEntity>[]) List<PaymentEntity> payments,
  }) = _PaymentHistoryState;
}
