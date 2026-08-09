import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/payment/get_payment_history_use_case.dart';

part 'payment_history_cubit.freezed.dart';
part 'payment_history_state.dart';

@injectable
class PaymentHistoryCubit extends Cubit<PaymentHistoryState> {
  PaymentHistoryCubit(this._getPaymentHistoryUseCase, this._logger)
    : super(const PaymentHistoryState());

  final GetPaymentHistoryUseCase _getPaymentHistoryUseCase;
  final Logger _logger;

  Future<void> loadHistory() async {
    emit(state.copyWith(status: BaseStatus.loading()));
    try {
      final payments = await _getPaymentHistoryUseCase.execute();
      emit(state.copyWith(status: BaseStatus.success(), payments: payments));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
