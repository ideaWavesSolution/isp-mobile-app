import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/packages_cubit.dart';
import 'packages_portrait_view.dart';

@RoutePage()
class PackagesScreen extends Screen {
  const PackagesScreen({
    super.key,
    required this.connectionId,
    this.isChangeMode = false,
  });

  final String connectionId;
  final bool isChangeMode;

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<PackagesCubit>(
      create: (context) => injector()..loadPackages(connectionId),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return PackagesPortraitView(
      connectionId: connectionId,
      isChangeMode: isChangeMode,
    );
  }
}
