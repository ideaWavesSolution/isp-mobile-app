import 'package:isp_mobile_app/data/data_source/auth/auth_data_source.dart';
import 'package:isp_mobile_app/data/data_source/auth/remote/auth_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_mobile_app/data/data_source/customer/customer_data_source.dart';
import 'package:isp_mobile_app/data/data_source/customer/remote/customer_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/media_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/remote/media_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/package_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/remote/package_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/payment_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/remote/payment_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/remote/ticket_remote_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/ticket_data_source.dart';

class RemoteDataSourceFactory implements DataSourceFactory {
  RemoteDataSourceFactory(
    this._authRemote,
    this._customerRemote,
    this._packageRemote,
    this._paymentRemote,
    this._ticketRemote,
    this._mediaRemote,
  );

  final AuthRemoteDataSource _authRemote;
  final CustomerRemoteDataSource _customerRemote;
  final PackageRemoteDataSource _packageRemote;
  final PaymentRemoteDataSource _paymentRemote;
  final TicketRemoteDataSource _ticketRemote;
  final MediaRemoteDataSource _mediaRemote;

  @override
  AuthDataSource createAuthDataSource() => _authRemote;

  @override
  CustomerDataSource createCustomerDataSource() => _customerRemote;

  @override
  PackageDataSource createPackageDataSource() => _packageRemote;

  @override
  PaymentDataSource createPaymentDataSource() => _paymentRemote;

  @override
  TicketDataSource createTicketDataSource() => _ticketRemote;

  @override
  MediaDataSource createMediaDataSource() => _mediaRemote;
}
