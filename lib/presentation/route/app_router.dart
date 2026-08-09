import 'package:auto_route/auto_route.dart';
import 'package:isp_mobile_app/presentation/route/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: WebViewRoute.page),
    AutoRoute(page: LogInRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: DashboardRoute.page),
    AutoRoute(page: PackagesRoute.page),
    AutoRoute(page: PaymentHistoryRoute.page),
    AutoRoute(page: MakePaymentRoute.page),
    AutoRoute(page: SupportTicketRoute.page),
    AutoRoute(page: CreateTicketRoute.page),
    AutoRoute(page: MediaRoute.page),
    AutoRoute(page: MediaItemsRoute.page),
  ];
}
