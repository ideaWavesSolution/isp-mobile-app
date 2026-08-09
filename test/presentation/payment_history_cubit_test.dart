import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/domain/use_cases/payment/get_payment_history_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/payment_history/cubit/payment_history_cubit.dart';

class MockGetPaymentHistoryUseCase extends Mock
    implements GetPaymentHistoryUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late MockGetPaymentHistoryUseCase useCase;
  late MockLogger logger;

  final payments = [
    PaymentEntity(
      id: '1',
      date: DateTime(2026, 7, 31),
      month: 'Jul 2026',
      amountPaid: 500,
      method: PaymentMethod.nagad,
      createdBy: 'Customer',
    ),
  ];

  setUp(() {
    useCase = MockGetPaymentHistoryUseCase();
    logger = MockLogger();
  });

  test('loadHistory emits loading then success', () async {
    when(() => useCase.execute()).thenAnswer((_) async => payments);
    final cubit = PaymentHistoryCubit(useCase, logger);
    final states = <PaymentHistoryState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadHistory();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isSuccess, isTrue);
    expect(states[1].payments, payments);
  });

  test('loadHistory emits failure when the use case throws', () async {
    when(() => useCase.execute()).thenThrow(const ResponseError.unknown());
    final cubit = PaymentHistoryCubit(useCase, logger);
    final states = <PaymentHistoryState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadHistory();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isFailure, isTrue);
  });
}
