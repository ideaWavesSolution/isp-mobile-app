import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/helper/secure_storage_service.dart';
import 'package:isp_mobile_app/data/data_source/auth/auth_data_source.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/models/request_model/base/base_request.dart';
import 'package:isp_mobile_app/data/repository_impl/auth/auth_repository_impl.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';

class MockDataSourceFactory extends Mock implements DataSourceFactory {}

class MockAuthDataSource extends Mock implements AuthDataSource {}

class MockSecureStorageService extends Mock implements SecureStorageService {}

void main() {
  setUpAll(() {
    registerFallbackValue(const LoginRequestModel(ip: '', password: ''));
    registerFallbackValue(
      const RegisterRequestModel(
        fullName: '',
        phone: '',
        address: '',
        packageInterest: '',
      ),
    );
  });

  late MockDataSourceFactory factory;
  late MockAuthDataSource dataSource;
  late MockSecureStorageService secureStorage;
  late AuthRepositoryImpl repository;

  setUp(() {
    factory = MockDataSourceFactory();
    dataSource = MockAuthDataSource();
    secureStorage = MockSecureStorageService();
    when(() => factory.createAuthDataSource()).thenReturn(dataSource);
    repository = AuthRepositoryImpl(factory, secureStorage);
  });

  // NOTE: login() currently bypasses the data source call (see the `TODO:
  // Bypass login` marker in auth_repository_impl.dart) and always persists a
  // static token, so real credential checking only happens once that bypass
  // is removed for a live backend.
  test('login persists a token via secure storage', () async {
    when(() => secureStorage.setAccessToken(any())).thenAnswer((_) async {});

    await repository.login(
      inputModel: const LoginEntity(ip: '10.0.0.1', password: '123456'),
    );

    verify(() => secureStorage.setAccessToken('token')).called(1);
  });

  test(
    'register maps the entity to a request model for the data source',
    () async {
      when(() => dataSource.register(any())).thenAnswer((_) async {});

      await repository.register(
        inputModel: const RegistrationEntity(
          fullName: 'Towsid',
          phone: '01700000000',
          address: 'Dhaka',
          packageInterest: '20MB',
        ),
      );

      final captured = verify(() => dataSource.register(captureAny())).captured;
      final sent = captured.single as RegisterRequestModel;
      expect(sent.fullName, 'Towsid');
      expect(sent.phone, '01700000000');
      expect(sent.address, 'Dhaka');
      expect(sent.packageInterest, '20MB');
    },
  );

  test('logout clears the stored access token', () async {
    when(() => secureStorage.clearAccessToken()).thenAnswer((_) async {});

    await repository.logout();

    verify(() => secureStorage.clearAccessToken()).called(1);
  });
}
