import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/domain/use_cases/payment/make_payment_use_case.dart';

part 'make_payment_cubit.freezed.dart';
part 'make_payment_state.dart';

@injectable
class MakePaymentCubit extends Cubit<MakePaymentState> {
  MakePaymentCubit(this._makePaymentUseCase, this._logger)
    : super(const MakePaymentState());

  final MakePaymentUseCase _makePaymentUseCase;
  final Logger _logger;

  Future<void> pay({
    required double amount,
    required PaymentMethod method,
  }) async {
    emit(state.copyWith(payStatus: BaseStatus.loading()));
    try {
      final payment = await _makePaymentUseCase.execute(
        MakePaymentParams(amount: amount, method: method),
      );
      emit(state.copyWith(payStatus: BaseStatus.success(), payment: payment));
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(payStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }
}
