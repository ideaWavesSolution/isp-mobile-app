import 'package:isp_mobile_app/data/data_source/auth/auth_data_source.dart';
import 'package:isp_mobile_app/data/data_source/customer/customer_data_source.dart';
import 'package:isp_mobile_app/data/data_source/media/media_data_source.dart';
import 'package:isp_mobile_app/data/data_source/package/package_data_source.dart';
import 'package:isp_mobile_app/data/data_source/payment/payment_data_source.dart';
import 'package:isp_mobile_app/data/data_source/ticket/ticket_data_source.dart';

/// The Abstract Factory interface.
/// It declares a set of methods for creating individual data sources.
abstract class DataSourceFactory {
  AuthDataSource createAuthDataSource();
  CustomerDataSource createCustomerDataSource();
  PackageDataSource createPackageDataSource();
  PaymentDataSource createPaymentDataSource();
  TicketDataSource createTicketDataSource();
  MediaDataSource createMediaDataSource();
}
