import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/register_cubit.dart';
import 'register_portrait_view.dart';

@RoutePage()
class RegisterScreen extends Screen {
  const RegisterScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return MultiBlocProvider(
      providers: [BlocProvider<RegisterCubit>(create: (context) => injector())],
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const RegisterPortraitView();
  }
}
