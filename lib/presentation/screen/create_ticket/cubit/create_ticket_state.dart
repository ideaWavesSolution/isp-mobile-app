part of 'create_ticket_cubit.dart';

@freezed
sealed class CreateTicketState with _$CreateTicketState {
  const factory CreateTicketState({
    @Default(BaseStatus.initial()) BaseStatus submitStatus,
    TicketEntity? ticket,
  }) = _CreateTicketState;
}
