import 'package:injectable/injectable.dart';
import 'package:isp_mobile_app/core/env/app_environment.dart';
import 'package:isp_mobile_app/data/data_source/auth/mock/auth_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/auth/remote/auth_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/mock_data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/remote_data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/customer/mock/customer_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/customer/remote/customer_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/mock/media_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/remote/media_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/mock/package_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/remote/package_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/mock/payment_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/remote/payment_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/mock/ticket_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/remote/ticket_remote_data_source.dart';

@module
abstract class DataSourceProvider {
  @Environment(AppEnvironment.development)
  @Singleton(as: DataSourceFactory)
  MockDataSourceFactory mockFactory(
    AuthMockDataSource authMock,
    CustomerMockDataSource customerMock,
    PackageMockDataSource packageMock,
    PaymentMockDataSource paymentMock,
    TicketMockDataSource ticketMock,
    MediaMockDataSource mediaMock,
  ) => MockDataSourceFactory(
    authMock,
    customerMock,
    packageMock,
    paymentMock,
    ticketMock,
    mediaMock,
  );

  @Environment(AppEnvironment.production)
  @Environment(AppEnvironment.staging)
  @Singleton(as: DataSourceFactory)
  RemoteDataSourceFactory remoteFactory(
    AuthRemoteDataSource authRemote,
    CustomerRemoteDataSource customerRemote,
    PackageRemoteDataSource packageRemote,
    PaymentRemoteDataSource paymentRemote,
    TicketRemoteDataSource ticketRemote,
    MediaRemoteDataSource mediaRemote,
  ) => RemoteDataSourceFactory(
    authRemote,
    customerRemote,
    packageRemote,
    paymentRemote,
    ticketRemote,
    mediaRemote,
  );
}
