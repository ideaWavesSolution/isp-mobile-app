import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/domain/use_cases/payment/make_payment_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/make_payment/cubit/make_payment_cubit.dart';

class MockMakePaymentUseCase extends Mock implements MakePaymentUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  setUpAll(() {
    registerFallbackValue(
      const MakePaymentParams(amount: 0, method: PaymentMethod.bkash),
    );
  });

  late MockMakePaymentUseCase makePaymentUseCase;
  late MockLogger logger;

  final payment = PaymentEntity(
    id: '3',
    date: DateTime(2026, 8, 9),
    month: 'Aug 2026',
    amountPaid: 500,
    method: PaymentMethod.bkash,
    createdBy: 'Customer',
  );

  setUp(() {
    makePaymentUseCase = MockMakePaymentUseCase();
    logger = MockLogger();
  });

  MakePaymentCubit buildCubit() => MakePaymentCubit(makePaymentUseCase, logger);

  test('pay emits loading then success with the created payment', () async {
    when(
      () => makePaymentUseCase.execute(any()),
    ).thenAnswer((_) async => payment);
    final cubit = buildCubit();

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<MakePaymentState>((s) => s.payStatus.isLoading),
        predicate<MakePaymentState>(
          (s) => s.payStatus.isSuccess && s.payment == payment,
        ),
      ]),
    );

    await cubit.pay(amount: 500, method: PaymentMethod.bkash);
    await cubit.close();
  });

  test('pay emits failure when the use case throws', () async {
    when(
      () => makePaymentUseCase.execute(any()),
    ).thenThrow(const ResponseError.unknown());
    final cubit = buildCubit();

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<MakePaymentState>((s) => s.payStatus.isLoading),
        predicate<MakePaymentState>((s) => s.payStatus.isFailure),
      ]),
    );

    await cubit.pay(amount: 500, method: PaymentMethod.ssl);
    await cubit.close();
  });
}
