import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/dashboard_cubit.dart';
import 'dashboard_portrait_view.dart';

@RoutePage()
class DashboardScreen extends Screen {
  const DashboardScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<DashboardCubit>(
      create: (context) => injector()..loadDashboard(),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const DashboardPortraitView();
  }
}
