import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/auth/register_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/auth/register/cubit/register_cubit.dart';

class MockRegisterUseCase extends Mock implements RegisterUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  setUpAll(() {
    registerFallbackValue(
      const RegistrationEntity(
        fullName: '',
        phone: '',
        address: '',
        packageInterest: '',
      ),
    );
  });

  late MockRegisterUseCase useCase;
  late MockLogger logger;

  setUp(() {
    useCase = MockRegisterUseCase();
    logger = MockLogger();
  });

  const input = RegistrationEntity(
    fullName: 'Towsid',
    phone: '01700000000',
    address: 'Dhaka',
    packageInterest: '20MB',
  );

  test('emits loading then success', () async {
    when(() => useCase.execute(any())).thenAnswer((_) async {});
    final cubit = RegisterCubit(useCase, logger);

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<RegisterState>((s) => s.registerStatus.isLoading),
        predicate<RegisterState>((s) => s.registerStatus.isSuccess),
      ]),
    );

    await cubit.register(input);
    await cubit.close();
  });

  test('emits loading then failure when the use case throws', () async {
    when(() => useCase.execute(any())).thenThrow(const ResponseError.unknown());
    final cubit = RegisterCubit(useCase, logger);

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<RegisterState>((s) => s.registerStatus.isLoading),
        predicate<RegisterState>((s) => s.registerStatus.isFailure),
      ]),
    );

    await cubit.register(input);
    await cubit.close();
  });
}
