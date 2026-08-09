import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/ticket_status.dart';
import 'package:isp_mobile_app/domain/use_cases/ticket/get_tickets_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/support_ticket/cubit/support_ticket_cubit.dart';

class MockGetTicketsUseCase extends Mock implements GetTicketsUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late MockGetTicketsUseCase useCase;
  late MockLogger logger;

  final tickets = [
    TicketEntity(
      id: '1',
      date: DateTime(2026, 8, 1),
      type: 'Connection Issue',
      issue: 'No internet',
      status: TicketStatus.open,
      createdBy: 'Customer',
    ),
  ];

  setUp(() {
    useCase = MockGetTicketsUseCase();
    logger = MockLogger();
  });

  test('loadTickets emits loading then success', () async {
    when(() => useCase.execute()).thenAnswer((_) async => tickets);
    final cubit = SupportTicketCubit(useCase, logger);
    final states = <SupportTicketState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadTickets();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isSuccess, isTrue);
    expect(states[1].tickets, tickets);
  });

  test('loadTickets emits failure when the use case throws', () async {
    when(() => useCase.execute()).thenThrow(const ResponseError.unknown());
    final cubit = SupportTicketCubit(useCase, logger);
    final states = <SupportTicketState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadTickets();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isFailure, isTrue);
  });
}
