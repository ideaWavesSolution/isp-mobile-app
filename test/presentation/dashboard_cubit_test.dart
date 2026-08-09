import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/customer_status.dart';
import 'package:isp_mobile_app/domain/use_cases/auth/logout_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/customer/get_connections_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/customer/get_customer_profile_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/customer/watch_bandwidth_usage_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/dashboard/cubit/dashboard_cubit.dart';

class MockGetCustomerProfileUseCase extends Mock
    implements GetCustomerProfileUseCase {}

class MockGetConnectionsUseCase extends Mock implements GetConnectionsUseCase {}

class MockWatchBandwidthUsageUseCase extends Mock
    implements WatchBandwidthUsageUseCase {}

class MockLogoutUseCase extends Mock implements LogoutUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late MockGetCustomerProfileUseCase profileUseCase;
  late MockGetConnectionsUseCase connectionsUseCase;
  late MockWatchBandwidthUsageUseCase bandwidthUseCase;
  late MockLogoutUseCase logoutUseCase;
  late MockLogger logger;

  const customer = CustomerEntity(
    id: 'IW1001',
    name: 'Nafiz',
    username: 'IW1001',
    status: CustomerStatus.active,
  );
  final connections = [
    ConnectionEntity(
      id: 'home',
      name: 'Home Connection',
      ip: '103.198.22.10',
      status: CustomerStatus.active,
      packageName: '20MB',
      monthlyBill: 500,
      balanceDue: 500,
      expireDate: DateTime(2026, 8, 12),
      uploadBytes: 100,
      downloadBytes: 200,
      uptime: const Duration(hours: 2),
    ),
  ];

  setUp(() {
    profileUseCase = MockGetCustomerProfileUseCase();
    connectionsUseCase = MockGetConnectionsUseCase();
    bandwidthUseCase = MockWatchBandwidthUsageUseCase();
    logoutUseCase = MockLogoutUseCase();
    logger = MockLogger();
    when(
      () => bandwidthUseCase.execute(any()),
    ).thenAnswer((_) => const Stream.empty());
  });

  DashboardCubit buildCubit() => DashboardCubit(
    profileUseCase,
    connectionsUseCase,
    bandwidthUseCase,
    logoutUseCase,
    logger,
  );

  test('loadDashboard emits loading then success with combined data', () async {
    when(() => profileUseCase.execute()).thenAnswer((_) async => customer);
    when(
      () => connectionsUseCase.execute(),
    ).thenAnswer((_) async => connections);

    final cubit = buildCubit();
    final states = <DashboardState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadDashboard();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isSuccess, isTrue);
    expect(states[1].customer, customer);
    expect(states[1].connections, connections);
    expect(states[1].selectedConnectionId, 'home');
  });

  test('loadDashboard emits failure when a use case throws', () async {
    when(
      () => profileUseCase.execute(),
    ).thenThrow(const ResponseError.unknown());
    when(
      () => connectionsUseCase.execute(),
    ).thenAnswer((_) async => connections);

    final cubit = buildCubit();

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<DashboardState>((s) => s.status.isLoading),
        predicate<DashboardState>((s) => s.status.isFailure),
      ]),
    );

    await cubit.loadDashboard();
    await cubit.close();
  });

  test('logout emits loading then success and clears session', () async {
    when(() => logoutUseCase.execute()).thenAnswer((_) async {});
    final cubit = buildCubit();

    expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<DashboardState>((s) => s.logoutStatus.isLoading),
        predicate<DashboardState>((s) => s.logoutStatus.isSuccess),
      ]),
    );

    await cubit.logout();
    verify(() => logoutUseCase.execute()).called(1);
    await cubit.close();
  });
}
