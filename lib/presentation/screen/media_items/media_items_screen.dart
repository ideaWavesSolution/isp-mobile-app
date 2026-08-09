import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_mobile_app/core/injector/injector.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/presentation/widgets/widgets.dart';

import 'cubit/media_items_cubit.dart';
import 'media_items_portrait_view.dart';

@RoutePage()
class MediaItemsScreen extends Screen {
  const MediaItemsScreen({super.key, required this.category});

  final MediaCategoryEntity category;

  @override
  Widget buildViewWrapper({required Widget child}) {
    return BlocProvider<MediaItemsCubit>(
      create: (context) => injector()..loadItems(category.id),
      child: child,
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return MediaItemsPortraitView(category: category);
  }
}
