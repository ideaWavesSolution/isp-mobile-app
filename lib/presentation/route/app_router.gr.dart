// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart' as _i16;
import 'package:isp_mobile_app/domain/enum/payment_method.dart' as _i15;
import 'package:isp_mobile_app/presentation/screen/auth/login/login_screen.dart'
    as _i3;
import 'package:isp_mobile_app/presentation/screen/auth/register/register_screen.dart'
    as _i9;
import 'package:isp_mobile_app/presentation/screen/create_ticket/create_ticket_screen.dart'
    as _i1;
import 'package:isp_mobile_app/presentation/screen/dashboard/dashboard_screen.dart'
    as _i2;
import 'package:isp_mobile_app/presentation/screen/make_payment/make_payment_screen.dart'
    as _i4;
import 'package:isp_mobile_app/presentation/screen/media/media_screen.dart'
    as _i6;
import 'package:isp_mobile_app/presentation/screen/media_items/media_items_screen.dart'
    as _i5;
import 'package:isp_mobile_app/presentation/screen/packages/packages_screen.dart'
    as _i7;
import 'package:isp_mobile_app/presentation/screen/payment_history/payment_history_screen.dart'
    as _i8;
import 'package:isp_mobile_app/presentation/screen/splash/splash_screen.dart'
    as _i10;
import 'package:isp_mobile_app/presentation/screen/support_ticket/support_ticket_screen.dart'
    as _i11;
import 'package:isp_mobile_app/presentation/widgets/others/widgets.dart'
    as _i12;

/// generated route for
/// [_i1.CreateTicketScreen]
class CreateTicketRoute extends _i13.PageRouteInfo<void> {
  const CreateTicketRoute({List<_i13.PageRouteInfo>? children})
    : super(CreateTicketRoute.name, initialChildren: children);

  static const String name = 'CreateTicketRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateTicketScreen();
    },
  );
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute({List<_i13.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.LogInScreen]
class LogInRoute extends _i13.PageRouteInfo<void> {
  const LogInRoute({List<_i13.PageRouteInfo>? children})
    : super(LogInRoute.name, initialChildren: children);

  static const String name = 'LogInRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.LogInScreen();
    },
  );
}

/// generated route for
/// [_i4.MakePaymentScreen]
class MakePaymentRoute extends _i13.PageRouteInfo<MakePaymentRouteArgs> {
  MakePaymentRoute({
    _i14.Key? key,
    required _i15.PaymentMethod method,
    required String connectionId,
    double? initialAmount,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         MakePaymentRoute.name,
         args: MakePaymentRouteArgs(
           key: key,
           method: method,
           connectionId: connectionId,
           initialAmount: initialAmount,
         ),
         initialChildren: children,
       );

  static const String name = 'MakePaymentRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MakePaymentRouteArgs>();
      return _i4.MakePaymentScreen(
        key: args.key,
        method: args.method,
        connectionId: args.connectionId,
        initialAmount: args.initialAmount,
      );
    },
  );
}

class MakePaymentRouteArgs {
  const MakePaymentRouteArgs({
    this.key,
    required this.method,
    required this.connectionId,
    this.initialAmount,
  });

  final _i14.Key? key;

  final _i15.PaymentMethod method;

  final String connectionId;

  final double? initialAmount;

  @override
  String toString() {
    return 'MakePaymentRouteArgs{key: $key, method: $method, connectionId: $connectionId, initialAmount: $initialAmount}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MakePaymentRouteArgs) return false;
    return key == other.key &&
        method == other.method &&
        connectionId == other.connectionId &&
        initialAmount == other.initialAmount;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      method.hashCode ^
      connectionId.hashCode ^
      initialAmount.hashCode;
}

/// generated route for
/// [_i5.MediaItemsScreen]
class MediaItemsRoute extends _i13.PageRouteInfo<MediaItemsRouteArgs> {
  MediaItemsRoute({
    _i14.Key? key,
    required _i16.MediaCategoryEntity category,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         MediaItemsRoute.name,
         args: MediaItemsRouteArgs(key: key, category: category),
         initialChildren: children,
       );

  static const String name = 'MediaItemsRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MediaItemsRouteArgs>();
      return _i5.MediaItemsScreen(key: args.key, category: args.category);
    },
  );
}

class MediaItemsRouteArgs {
  const MediaItemsRouteArgs({this.key, required this.category});

  final _i14.Key? key;

  final _i16.MediaCategoryEntity category;

  @override
  String toString() {
    return 'MediaItemsRouteArgs{key: $key, category: $category}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MediaItemsRouteArgs) return false;
    return key == other.key && category == other.category;
  }

  @override
  int get hashCode => key.hashCode ^ category.hashCode;
}

/// generated route for
/// [_i6.MediaScreen]
class MediaRoute extends _i13.PageRouteInfo<void> {
  const MediaRoute({List<_i13.PageRouteInfo>? children})
    : super(MediaRoute.name, initialChildren: children);

  static const String name = 'MediaRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.MediaScreen();
    },
  );
}

/// generated route for
/// [_i7.PackagesScreen]
class PackagesRoute extends _i13.PageRouteInfo<PackagesRouteArgs> {
  PackagesRoute({
    _i14.Key? key,
    required String connectionId,
    bool isChangeMode = false,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         PackagesRoute.name,
         args: PackagesRouteArgs(
           key: key,
           connectionId: connectionId,
           isChangeMode: isChangeMode,
         ),
         initialChildren: children,
       );

  static const String name = 'PackagesRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PackagesRouteArgs>();
      return _i7.PackagesScreen(
        key: args.key,
        connectionId: args.connectionId,
        isChangeMode: args.isChangeMode,
      );
    },
  );
}

class PackagesRouteArgs {
  const PackagesRouteArgs({
    this.key,
    required this.connectionId,
    this.isChangeMode = false,
  });

  final _i14.Key? key;

  final String connectionId;

  final bool isChangeMode;

  @override
  String toString() {
    return 'PackagesRouteArgs{key: $key, connectionId: $connectionId, isChangeMode: $isChangeMode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PackagesRouteArgs) return false;
    return key == other.key &&
        connectionId == other.connectionId &&
        isChangeMode == other.isChangeMode;
  }

  @override
  int get hashCode =>
      key.hashCode ^ connectionId.hashCode ^ isChangeMode.hashCode;
}

/// generated route for
/// [_i8.PaymentHistoryScreen]
class PaymentHistoryRoute extends _i13.PageRouteInfo<void> {
  const PaymentHistoryRoute({List<_i13.PageRouteInfo>? children})
    : super(PaymentHistoryRoute.name, initialChildren: children);

  static const String name = 'PaymentHistoryRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.PaymentHistoryScreen();
    },
  );
}

/// generated route for
/// [_i9.RegisterScreen]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute({List<_i13.PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.RegisterScreen();
    },
  );
}

/// generated route for
/// [_i10.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.SplashScreen();
    },
  );
}

/// generated route for
/// [_i11.SupportTicketScreen]
class SupportTicketRoute extends _i13.PageRouteInfo<void> {
  const SupportTicketRoute({List<_i13.PageRouteInfo>? children})
    : super(SupportTicketRoute.name, initialChildren: children);

  static const String name = 'SupportTicketRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.SupportTicketScreen();
    },
  );
}

/// generated route for
/// [_i12.WebViewScreen]
class WebViewRoute extends _i13.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    required String appbarTitle,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         WebViewRoute.name,
         args: WebViewRouteArgs(url: url, appbarTitle: appbarTitle, key: key),
         initialChildren: children,
       );

  static const String name = 'WebViewRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>();
      return _i12.WebViewScreen(
        url: args.url,
        appbarTitle: args.appbarTitle,
        key: args.key,
      );
    },
  );
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.url,
    required this.appbarTitle,
    this.key,
  });

  final String url;

  final String appbarTitle;

  final _i14.Key? key;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url, appbarTitle: $appbarTitle, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WebViewRouteArgs) return false;
    return url == other.url &&
        appbarTitle == other.appbarTitle &&
        key == other.key;
  }

  @override
  int get hashCode => url.hashCode ^ appbarTitle.hashCode ^ key.hashCode;
}
