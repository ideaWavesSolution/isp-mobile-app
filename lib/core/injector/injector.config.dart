// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/data_source/auth/mock/auth_mock_data_source.dart' as _i63;
import '../../data/data_source/auth/remote/auth_remote_data_source.dart'
    as _i976;
import '../../data/data_source/base/factory/data_source_factory.dart' as _i718;
import '../../data/data_source/base/factory/data_source_provider.dart' as _i899;
import '../../data/data_source/customer/mock/customer_mock_data_source.dart'
    as _i419;
import '../../data/data_source/customer/remote/customer_remote_data_source.dart'
    as _i378;
import '../../data/data_source/media/mock/media_mock_data_source.dart' as _i273;
import '../../data/data_source/media/remote/media_remote_data_source.dart'
    as _i431;
import '../../data/data_source/package/mock/package_mock_data_source.dart'
    as _i423;
import '../../data/data_source/package/remote/package_remote_data_source.dart'
    as _i809;
import '../../data/data_source/payment/mock/payment_mock_data_source.dart'
    as _i297;
import '../../data/data_source/payment/remote/payment_remote_data_source.dart'
    as _i313;
import '../../data/data_source/ticket/mock/ticket_mock_data_source.dart'
    as _i582;
import '../../data/data_source/ticket/remote/ticket_remote_data_source.dart'
    as _i149;
import '../../data/repository_impl/auth/auth_repository_impl.dart' as _i747;
import '../../data/repository_impl/customer/customer_repository_impl.dart'
    as _i815;
import '../../data/repository_impl/media/media_repository_impl.dart' as _i863;
import '../../data/repository_impl/package/package_repository_impl.dart'
    as _i562;
import '../../data/repository_impl/payment/payment_repository_impl.dart'
    as _i783;
import '../../data/repository_impl/ticket/ticket_repository_impl.dart' as _i151;
import '../../domain/repository/auth/auth_repository.dart' as _i912;
import '../../domain/repository/customer/customer_repository.dart' as _i844;
import '../../domain/repository/media/media_repository.dart' as _i88;
import '../../domain/repository/package/package_repository.dart' as _i576;
import '../../domain/repository/payment/payment_repository.dart' as _i675;
import '../../domain/repository/ticket/ticket_repository.dart' as _i305;
import '../../domain/use_cases/auth/login_use_case.dart' as _i40;
import '../../domain/use_cases/auth/logout_use_case.dart' as _i76;
import '../../domain/use_cases/auth/register_use_case.dart' as _i343;
import '../../domain/use_cases/customer/get_connections_use_case.dart' as _i132;
import '../../domain/use_cases/customer/get_customer_profile_use_case.dart'
    as _i432;
import '../../domain/use_cases/customer/watch_bandwidth_usage_use_case.dart'
    as _i281;
import '../../domain/use_cases/media/get_media_categories_use_case.dart'
    as _i490;
import '../../domain/use_cases/media/get_media_items_use_case.dart' as _i61;
import '../../domain/use_cases/package/change_package_use_case.dart' as _i1054;
import '../../domain/use_cases/package/get_packages_use_case.dart' as _i935;
import '../../domain/use_cases/payment/get_payment_history_use_case.dart'
    as _i995;
import '../../domain/use_cases/payment/make_payment_use_case.dart' as _i399;
import '../../domain/use_cases/ticket/create_ticket_use_case.dart' as _i419;
import '../../domain/use_cases/ticket/get_tickets_use_case.dart' as _i136;
import '../../presentation/screen/auth/login/cubit/login_cubit.dart' as _i549;
import '../../presentation/screen/auth/register/cubit/register_cubit.dart'
    as _i1043;
import '../../presentation/screen/create_ticket/cubit/create_ticket_cubit.dart'
    as _i716;
import '../../presentation/screen/dashboard/cubit/dashboard_cubit.dart'
    as _i577;
import '../../presentation/screen/make_payment/cubit/make_payment_cubit.dart'
    as _i815;
import '../../presentation/screen/media/cubit/media_cubit.dart' as _i17;
import '../../presentation/screen/media_items/cubit/media_items_cubit.dart'
    as _i703;
import '../../presentation/screen/packages/cubit/packages_cubit.dart' as _i542;
import '../../presentation/screen/payment_history/cubit/payment_history_cubit.dart'
    as _i93;
import '../../presentation/screen/support_ticket/cubit/support_ticket_cubit.dart'
    as _i900;
import '../helper/secure_storage_service.dart' as _i693;
import 'module.dart' as _i946;

const String _staging = 'staging';
const String _development = 'development';
const String _production = 'production';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final storageModule = _$StorageModule();
    final loggerModule = _$LoggerModule();
    final dataSourceProvider = _$DataSourceProvider();
    gh.factory<String>(() => networkModule.baseURL);
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => storageModule.secureStorage,
    );
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i63.AuthMockDataSource>(() => _i63.AuthMockDataSource());
    gh.lazySingleton<_i378.CustomerRemoteDataSource>(
      () => _i378.CustomerRemoteDataSource(),
    );
    gh.lazySingleton<_i273.MediaMockDataSource>(
      () => _i273.MediaMockDataSource(),
    );
    gh.lazySingleton<_i431.MediaRemoteDataSource>(
      () => _i431.MediaRemoteDataSource(),
    );
    gh.lazySingleton<_i423.PackageMockDataSource>(
      () => _i423.PackageMockDataSource(),
    );
    gh.lazySingleton<_i809.PackageRemoteDataSource>(
      () => _i809.PackageRemoteDataSource(),
    );
    gh.lazySingleton<_i297.PaymentMockDataSource>(
      () => _i297.PaymentMockDataSource(),
    );
    gh.lazySingleton<_i313.PaymentRemoteDataSource>(
      () => _i313.PaymentRemoteDataSource(),
    );
    gh.lazySingleton<_i582.TicketMockDataSource>(
      () => _i582.TicketMockDataSource(),
    );
    gh.lazySingleton<_i149.TicketRemoteDataSource>(
      () => _i149.TicketRemoteDataSource(),
    );
    gh.lazySingleton<_i419.CustomerMockDataSource>(
      () => _i419.CustomerMockDataSource(gh<_i423.PackageMockDataSource>()),
    );
    gh.lazySingleton<_i693.SecureStorageService>(
      () => _i693.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.unAuthenticatedStgDio,
      instanceName: 'unauthenticated',
      registerFor: {_staging},
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.authenticatedDio,
      instanceName: 'authenticated',
    );
    gh.singleton<_i718.DataSourceFactory>(
      () => dataSourceProvider.mockFactory(
        gh<_i63.AuthMockDataSource>(),
        gh<_i419.CustomerMockDataSource>(),
        gh<_i423.PackageMockDataSource>(),
        gh<_i297.PaymentMockDataSource>(),
        gh<_i582.TicketMockDataSource>(),
        gh<_i273.MediaMockDataSource>(),
      ),
      registerFor: {_development},
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.unAuthenticatedDevDio,
      instanceName: 'unauthenticated',
      registerFor: {_development},
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.unAuthenticatedProdDio,
      instanceName: 'unauthenticated',
      registerFor: {_production},
    );
    gh.lazySingleton<_i976.AuthRemoteDataSource>(
      () => _i976.AuthRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'unauthenticated'),
      ),
    );
    gh.singleton<_i718.DataSourceFactory>(
      () => dataSourceProvider.remoteFactory(
        gh<_i976.AuthRemoteDataSource>(),
        gh<_i378.CustomerRemoteDataSource>(),
        gh<_i809.PackageRemoteDataSource>(),
        gh<_i313.PaymentRemoteDataSource>(),
        gh<_i149.TicketRemoteDataSource>(),
        gh<_i431.MediaRemoteDataSource>(),
      ),
      registerFor: {_production, _staging},
    );
    gh.singleton<_i88.MediaRepository>(
      () => _i863.MediaRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.factory<_i490.GetMediaCategoriesUseCase>(
      () => _i490.GetMediaCategoriesUseCase(gh<_i88.MediaRepository>()),
    );
    gh.factory<_i61.GetMediaItemsUseCase>(
      () => _i61.GetMediaItemsUseCase(gh<_i88.MediaRepository>()),
    );
    gh.factory<_i17.MediaCubit>(
      () => _i17.MediaCubit(
        gh<_i490.GetMediaCategoriesUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i912.AuthRepository>(
      () => _i747.AuthRepositoryImpl(
        gh<_i718.DataSourceFactory>(),
        gh<_i693.SecureStorageService>(),
      ),
    );
    gh.factory<_i703.MediaItemsCubit>(
      () => _i703.MediaItemsCubit(
        gh<_i61.GetMediaItemsUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i675.PaymentRepository>(
      () => _i783.PaymentRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i844.CustomerRepository>(
      () => _i815.CustomerRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i576.PackageRepository>(
      () => _i562.PackageRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i305.TicketRepository>(
      () => _i151.TicketRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.factory<_i132.GetConnectionsUseCase>(
      () => _i132.GetConnectionsUseCase(gh<_i844.CustomerRepository>()),
    );
    gh.factory<_i432.GetCustomerProfileUseCase>(
      () => _i432.GetCustomerProfileUseCase(gh<_i844.CustomerRepository>()),
    );
    gh.factory<_i281.WatchBandwidthUsageUseCase>(
      () => _i281.WatchBandwidthUsageUseCase(gh<_i844.CustomerRepository>()),
    );
    gh.factory<_i40.LoginUseCase>(
      () => _i40.LoginUseCase(gh<_i912.AuthRepository>()),
    );
    gh.factory<_i76.LogoutUseCase>(
      () => _i76.LogoutUseCase(gh<_i912.AuthRepository>()),
    );
    gh.factory<_i343.RegisterUseCase>(
      () => _i343.RegisterUseCase(gh<_i912.AuthRepository>()),
    );
    gh.factory<_i1043.RegisterCubit>(
      () =>
          _i1043.RegisterCubit(gh<_i343.RegisterUseCase>(), gh<_i974.Logger>()),
    );
    gh.factory<_i995.GetPaymentHistoryUseCase>(
      () => _i995.GetPaymentHistoryUseCase(gh<_i675.PaymentRepository>()),
    );
    gh.factory<_i399.MakePaymentUseCase>(
      () => _i399.MakePaymentUseCase(gh<_i675.PaymentRepository>()),
    );
    gh.factory<_i1054.ChangePackageUseCase>(
      () => _i1054.ChangePackageUseCase(gh<_i576.PackageRepository>()),
    );
    gh.factory<_i935.GetPackagesUseCase>(
      () => _i935.GetPackagesUseCase(gh<_i576.PackageRepository>()),
    );
    gh.factory<_i577.DashboardCubit>(
      () => _i577.DashboardCubit(
        gh<_i432.GetCustomerProfileUseCase>(),
        gh<_i132.GetConnectionsUseCase>(),
        gh<_i281.WatchBandwidthUsageUseCase>(),
        gh<_i76.LogoutUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i419.CreateTicketUseCase>(
      () => _i419.CreateTicketUseCase(gh<_i305.TicketRepository>()),
    );
    gh.factory<_i136.GetTicketsUseCase>(
      () => _i136.GetTicketsUseCase(gh<_i305.TicketRepository>()),
    );
    gh.factory<_i815.MakePaymentCubit>(
      () => _i815.MakePaymentCubit(
        gh<_i399.MakePaymentUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i549.LoginCubit>(
      () => _i549.LoginCubit(gh<_i40.LoginUseCase>(), gh<_i974.Logger>()),
    );
    gh.factory<_i542.PackagesCubit>(
      () => _i542.PackagesCubit(
        gh<_i935.GetPackagesUseCase>(),
        gh<_i1054.ChangePackageUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i716.CreateTicketCubit>(
      () => _i716.CreateTicketCubit(
        gh<_i419.CreateTicketUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i93.PaymentHistoryCubit>(
      () => _i93.PaymentHistoryCubit(
        gh<_i995.GetPaymentHistoryUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i900.SupportTicketCubit>(
      () => _i900.SupportTicketCubit(
        gh<_i136.GetTicketsUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    return this;
  }
}

class _$NetworkModule extends _i946.NetworkModule {}

class _$StorageModule extends _i946.StorageModule {}

class _$LoggerModule extends _i946.LoggerModule {}

class _$DataSourceProvider extends _i899.DataSourceProvider {}
