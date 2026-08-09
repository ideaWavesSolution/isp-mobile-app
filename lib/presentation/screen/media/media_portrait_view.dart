import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/enum/media_category_type.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/route/app_router.gr.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

import 'cubit/media_cubit.dart';

class MediaPortraitView extends StatelessWidget {
  const MediaPortraitView({super.key});

  IconData _icon(MediaCategoryType type) {
    return switch (type) {
      MediaCategoryType.liveTv => Icons.live_tv_rounded,
      MediaCategoryType.ftpServer => Icons.dns_rounded,
      MediaCategoryType.news => Icons.newspaper_rounded,
      MediaCategoryType.education => Icons.school_rounded,
    };
  }

  String _label(BuildContext context, MediaCategoryType type) {
    return switch (type) {
      MediaCategoryType.liveTv => context.l10n.categoryLiveTv,
      MediaCategoryType.ftpServer => context.l10n.categoryFtpServer,
      MediaCategoryType.news => context.l10n.categoryNews,
      MediaCategoryType.education => context.l10n.categoryEducation,
    };
  }

  Color _color(BuildContext context, MediaCategoryType type) {
    final theme = context.colors;
    return switch (type) {
      MediaCategoryType.liveTv => theme.info,
      MediaCategoryType.ftpServer => theme.primary,
      MediaCategoryType.news => theme.success,
      MediaCategoryType.education => theme.warning,
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(context.l10n.liveTvFtpTitle),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocBuilder<MediaCubit, MediaState>(
        builder: (context, state) {
          if (state.status.isLoading && state.categories.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.separated(
            padding: EdgeInsets.all(AppConstant.horizontalGap16),
            itemCount: state.categories.length,
            separatorBuilder: (_, _) => Gap(AppConstant.verticalGap12),
            itemBuilder: (context, index) {
              final category = state.categories[index];
              return _CategoryTile(
                icon: _icon(category.type),
                color: _color(context, category.type),
                label: _label(context, category.type),
                itemCount: category.itemCount,
                onTap: () =>
                    context.router.push(MediaItemsRoute(category: category)),
              );
            },
          );
        },
      ),
    );
  }
}

class _CategoryTile extends StatelessWidget {
  const _CategoryTile({
    required this.icon,
    required this.color,
    required this.label,
    required this.itemCount,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final String label;
  final int itemCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
      child: Container(
        padding: EdgeInsets.all(AppConstant.horizontalGap16),
        decoration: BoxDecoration(
          color: color.withAlpha(20),
          borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
          border: Border.all(color: color.withAlpha(64)),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(AppConstant.horizontalGap12),
              decoration: BoxDecoration(
                color: color.withAlpha(46),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color),
            ),
            Gap(AppConstant.horizontalGap16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.bodyMediumBold(label),
                  AppText.bodySmall(
                    '$itemCount',
                    color: theme.onSurface.withAlpha(140),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: theme.onSurface.withAlpha(140),
            ),
          ],
        ),
      ),
    );
  }
}
