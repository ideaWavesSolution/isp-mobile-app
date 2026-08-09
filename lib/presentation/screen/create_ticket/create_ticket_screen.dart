import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'create_ticket_portrait_view.dart';
import 'cubit/create_ticket_cubit.dart';

@RoutePage()
class CreateTicketScreen extends Screen {
  const CreateTicketScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<CreateTicketCubit>(
      create: (context) => injector(),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const CreateTicketPortraitView();
  }
}
