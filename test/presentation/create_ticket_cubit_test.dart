import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/ticket_status.dart';
import 'package:isp_mobile_app/domain/use_cases/ticket/create_ticket_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/create_ticket/cubit/create_ticket_cubit.dart';

class MockCreateTicketUseCase extends Mock implements CreateTicketUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  setUpAll(() {
    registerFallbackValue(const CreateTicketParams(type: '', issue: ''));
  });

  late MockCreateTicketUseCase useCase;
  late MockLogger logger;

  final ticket = TicketEntity(
    id: '1',
    date: DateTime(2026, 8, 9),
    type: 'Billing Issue',
    issue: 'Wrong amount charged',
    status: TicketStatus.open,
    createdBy: 'Customer',
  );

  setUp(() {
    useCase = MockCreateTicketUseCase();
    logger = MockLogger();
  });

  test('submit emits loading then success with the created ticket', () async {
    when(() => useCase.execute(any())).thenAnswer((_) async => ticket);
    final cubit = CreateTicketCubit(useCase, logger);

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<CreateTicketState>((s) => s.submitStatus.isLoading),
        predicate<CreateTicketState>(
          (s) => s.submitStatus.isSuccess && s.ticket == ticket,
        ),
      ]),
    );

    await cubit.submit(type: 'Billing Issue', issue: 'Wrong amount charged');
    await cubit.close();
  });

  test('submit emits failure when the use case throws', () async {
    when(() => useCase.execute(any())).thenThrow(const ResponseError.unknown());
    final cubit = CreateTicketCubit(useCase, logger);

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<CreateTicketState>((s) => s.submitStatus.isLoading),
        predicate<CreateTicketState>((s) => s.submitStatus.isFailure),
      ]),
    );

    await cubit.submit(type: 'Other', issue: 'x');
    await cubit.close();
  });
}
