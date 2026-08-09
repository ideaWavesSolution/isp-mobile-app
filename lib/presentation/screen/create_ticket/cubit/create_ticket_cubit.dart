import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/ticket/create_ticket_use_case.dart';

part 'create_ticket_cubit.freezed.dart';
part 'create_ticket_state.dart';

@injectable
class CreateTicketCubit extends Cubit<CreateTicketState> {
  CreateTicketCubit(this._createTicketUseCase, this._logger)
    : super(const CreateTicketState());

  final CreateTicketUseCase _createTicketUseCase;
  final Logger _logger;

  Future<void> submit({required String type, required String issue}) async {
    emit(state.copyWith(submitStatus: BaseStatus.loading()));
    try {
      final ticket = await _createTicketUseCase.execute(
        CreateTicketParams(type: type, issue: issue),
      );
      emit(state.copyWith(submitStatus: BaseStatus.success(), ticket: ticket));
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(submitStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }
}
