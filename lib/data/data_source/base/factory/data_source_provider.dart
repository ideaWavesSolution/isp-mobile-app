import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/core/env/app_environment.dart';
import 'package:isp_mobile_app/data/data_source/auth/mock/auth_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/auth/remote/auth_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/mock_data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/remote_data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/user/mock/user_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/user/remote/user_remote_data_source.dart';

@module
abstract class DataSourceProvider {
  @Environment(AppEnvironment.development)
  @Singleton(as: DataSourceFactory)
  MockDataSourceFactory mockFactory(
    UserMockDataSource userMock,
    AuthMockDataSource authMock,
  ) => MockDataSourceFactory(userMock, authMock);

  @Environment(AppEnvironment.production)
  @Environment(AppEnvironment.staging)
  @Singleton(as: DataSourceFactory)
  RemoteDataSourceFactory remoteFactory(
    UserRemoteDataSource userRemote,
    AuthRemoteDataSource authRemote,
  ) => RemoteDataSourceFactory(userRemote, authRemote);
}
