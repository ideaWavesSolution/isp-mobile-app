import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/package/change_package_use_case.dart';
import 'package:isp_mobile_app/domain/use_cases/package/get_packages_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/packages/cubit/packages_cubit.dart';

class MockGetPackagesUseCase extends Mock implements GetPackagesUseCase {}

class MockChangePackageUseCase extends Mock implements ChangePackageUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  setUpAll(() {
    registerFallbackValue(
      const ChangePackageParams(connectionId: '', packageId: ''),
    );
  });

  late MockGetPackagesUseCase getPackagesUseCase;
  late MockChangePackageUseCase changePackageUseCase;
  late MockLogger logger;

  const packages = [
    PackageEntity(
      id: '20mb',
      name: '20MB',
      priceBdt: 500,
      billingCycle: 'Month',
      features: ['Unlimited Internet'],
      isCurrent: true,
    ),
  ];

  setUp(() {
    getPackagesUseCase = MockGetPackagesUseCase();
    changePackageUseCase = MockChangePackageUseCase();
    logger = MockLogger();
  });

  PackagesCubit buildCubit() =>
      PackagesCubit(getPackagesUseCase, changePackageUseCase, logger);

  test('loadPackages emits loading then success', () async {
    when(
      () => getPackagesUseCase.execute(any()),
    ).thenAnswer((_) async => packages);
    final cubit = buildCubit();
    final states = <PackagesState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadPackages('home');
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    verify(() => getPackagesUseCase.execute('home')).called(1);
    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isSuccess, isTrue);
    expect(states[1].packages, packages);
  });

  test('loadPackages emits failure when the use case throws', () async {
    when(
      () => getPackagesUseCase.execute(any()),
    ).thenThrow(const ResponseError.unknown());
    final cubit = buildCubit();
    final states = <PackagesState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadPackages('home');
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isFailure, isTrue);
  });

  test(
    'changePackage emits loading then success and reloads packages',
    () async {
      when(() => changePackageUseCase.execute(any())).thenAnswer((_) async {});
      when(
        () => getPackagesUseCase.execute(any()),
      ).thenAnswer((_) async => packages);
      final cubit = buildCubit();
      final states = <PackagesState>[];
      final sub = cubit.stream.listen(states.add);

      await cubit.changePackage(connectionId: 'home', packageId: '20mb');
      await Future<void>.delayed(Duration.zero);
      await sub.cancel();
      await cubit.close();

      final captured = verify(
        () => changePackageUseCase.execute(captureAny()),
      ).captured;
      final sentParams = captured.single as ChangePackageParams;
      expect(sentParams.connectionId, 'home');
      expect(sentParams.packageId, '20mb');
      expect(states, hasLength(4));
      expect(states[0].changeStatus.isLoading, isTrue);
      expect(states[1].changeStatus.isSuccess, isTrue);
      expect(states[2].status.isLoading, isTrue);
      expect(states[3].status.isSuccess, isTrue);
    },
  );
}
