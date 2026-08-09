part of 'register_cubit.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(BaseStatus.initial()) BaseStatus registerStatus,
  }) = _RegisterState;
}
