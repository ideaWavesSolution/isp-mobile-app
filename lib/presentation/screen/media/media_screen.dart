import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/media_cubit.dart';
import 'media_portrait_view.dart';

@RoutePage()
class MediaScreen extends Screen {
  const MediaScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<MediaCubit>(
      create: (context) => injector()..loadCategories(),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const MediaPortraitView();
  }
}
