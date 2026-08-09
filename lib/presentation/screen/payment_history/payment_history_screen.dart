import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/payment_history_cubit.dart';
import 'payment_history_portrait_view.dart';

@RoutePage()
class PaymentHistoryScreen extends Screen {
  const PaymentHistoryScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<PaymentHistoryCubit>(
      create: (context) => injector()..loadHistory(),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const PaymentHistoryPortraitView();
  }
}
