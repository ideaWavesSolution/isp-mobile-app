import 'package:isp_mobile_app/data/data_source/auth/auth_data_source.dart';
import 'package:isp_mobile_app/data/data_source/auth/mock/auth_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/customer/customer_data_source.dart';
import 'package:isp_mobile_app/data/data_source/customer/mock/customer_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/media_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/mock/media_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/mock/package_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/package_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/mock/payment_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/payment_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/mock/ticket_mock_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/ticket_data_source.dart';

class MockDataSourceFactory implements DataSourceFactory {
  MockDataSourceFactory(
    this._authMock,
    this._customerMock,
    this._packageMock,
    this._paymentMock,
    this._ticketMock,
    this._mediaMock,
  );

  final AuthMockDataSource _authMock;
  final CustomerMockDataSource _customerMock;
  final PackageMockDataSource _packageMock;
  final PaymentMockDataSource _paymentMock;
  final TicketMockDataSource _ticketMock;
  final MediaMockDataSource _mediaMock;

  @override
  AuthDataSource createAuthDataSource() => _authMock;

  @override
  CustomerDataSource createCustomerDataSource() => _customerMock;

  @override
  PackageDataSource createPackageDataSource() => _packageMock;

  @override
  PaymentDataSource createPaymentDataSource() => _paymentMock;

  @override
  TicketDataSource createTicketDataSource() => _ticketMock;

  @override
  MediaDataSource createMediaDataSource() => _mediaMock;
}
