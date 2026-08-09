part of 'make_payment_cubit.dart';

@freezed
sealed class MakePaymentState with _$MakePaymentState {
  const factory MakePaymentState({
    @Default(BaseStatus.initial()) BaseStatus payStatus,
    PaymentEntity? payment,
  }) = _MakePaymentState;
}
