import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/ticket/get_tickets_use_case.dart';

part 'support_ticket_cubit.freezed.dart';
part 'support_ticket_state.dart';

@injectable
class SupportTicketCubit extends Cubit<SupportTicketState> {
  SupportTicketCubit(this._getTicketsUseCase, this._logger)
    : super(const SupportTicketState());

  final GetTicketsUseCase _getTicketsUseCase;
  final Logger _logger;

  Future<void> loadTickets() async {
    emit(state.copyWith(status: BaseStatus.loading()));
    try {
      final tickets = await _getTicketsUseCase.execute();
      emit(state.copyWith(status: BaseStatus.success(), tickets: tickets));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
