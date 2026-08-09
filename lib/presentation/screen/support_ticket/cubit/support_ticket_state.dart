part of 'support_ticket_cubit.dart';

@freezed
sealed class SupportTicketState with _$SupportTicketState {
  const factory SupportTicketState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<TicketEntity>[]) List<TicketEntity> tickets,
  }) = _SupportTicketState;
}
