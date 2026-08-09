import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/support_ticket_cubit.dart';
import 'support_ticket_portrait_view.dart';

@RoutePage()
class SupportTicketScreen extends Screen {
  const SupportTicketScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<SupportTicketCubit>(
      create: (context) => injector()..loadTickets(),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const SupportTicketPortraitView();
  }
}
