import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/media_category_type.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

import 'cubit/media_items_cubit.dart';

class MediaItemsPortraitView extends StatelessWidget {
  const MediaItemsPortraitView({super.key, required this.category});

  final MediaCategoryEntity category;

  IconData _icon(MediaCategoryType type) {
    return switch (type) {
      MediaCategoryType.liveTv => Icons.live_tv_rounded,
      MediaCategoryType.ftpServer => Icons.dns_rounded,
      MediaCategoryType.news => Icons.newspaper_rounded,
      MediaCategoryType.education => Icons.school_rounded,
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(category.name),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocBuilder<MediaItemsCubit, MediaItemsState>(
        builder: (context, state) {
          if (state.status.isLoading && state.items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.items.isEmpty) {
            return Center(
              child: AppText.bodyMedium(
                context.l10n.noItemsAvailable,
                color: theme.onSurface.withAlpha(153),
              ),
            );
          }

          return ListView.separated(
            padding: EdgeInsets.all(AppConstant.horizontalGap16),
            itemCount: state.items.length,
            separatorBuilder: (_, _) => Gap(AppConstant.verticalGap12),
            itemBuilder: (context, index) {
              final item = state.items[index];
              return Container(
                padding: EdgeInsets.all(AppConstant.horizontalGap16),
                decoration: BoxDecoration(
                  color: theme.surfaceElevated,
                  borderRadius: BorderRadius.circular(
                    AppConstant.borderRadius16,
                  ),
                  border: Border.all(color: theme.border),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(AppConstant.horizontalGap12),
                      decoration: BoxDecoration(
                        color: theme.primary.withAlpha(31),
                        borderRadius: BorderRadius.circular(
                          AppConstant.borderRadius12,
                        ),
                      ),
                      child: Icon(_icon(category.type), color: theme.primary),
                    ),
                    Gap(AppConstant.horizontalGap16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.bodyMediumBold(item.name),
                          Gap(2),
                          AppText.bodySmall(
                            item.description,
                            color: theme.onSurface.withAlpha(153),
                          ),
                        ],
                      ),
                    ),
                    Gap(AppConstant.horizontalGap8),
                    OutlinedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(item.name),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      child: AppText.bodySmallBold(context.l10n.mediaItemOpen),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
