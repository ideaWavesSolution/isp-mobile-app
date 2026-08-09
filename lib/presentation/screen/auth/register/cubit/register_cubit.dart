import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/auth/register_use_case.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerUseCase, this._logger)
    : super(const RegisterState());

  final RegisterUseCase _registerUseCase;
  final Logger _logger;

  Future<void> register(RegistrationEntity input) async {
    emit(state.copyWith(registerStatus: BaseStatus.loading()));

    try {
      await _registerUseCase.execute(input);
      emit(state.copyWith(registerStatus: BaseStatus.success()));
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(
          registerStatus: BaseStatus.failure(ResponseError.from(e)),
        ),
      );
    }
  }
}
