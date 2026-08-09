import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/make_payment_cubit.dart';
import 'make_payment_portrait_view.dart';

@RoutePage()
class MakePaymentScreen extends Screen {
  const MakePaymentScreen({
    super.key,
    required this.method,
    required this.connectionId,
    this.initialAmount,
  });

  final PaymentMethod method;
  final String connectionId;
  final double? initialAmount;

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<MakePaymentCubit>(
      create: (context) => injector(),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return MakePaymentPortraitView(
      method: method,
      initialAmount: initialAmount,
    );
  }
}
