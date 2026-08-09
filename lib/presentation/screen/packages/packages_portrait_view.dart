import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/package_card.dart';

import 'cubit/packages_cubit.dart';

class PackagesPortraitView extends StatelessWidget {
  const PackagesPortraitView({
    super.key,
    required this.connectionId,
    required this.isChangeMode,
  });

  final String connectionId;
  final bool isChangeMode;

  Future<void> _onSelect(BuildContext context, PackageEntity package) async {
    final theme = context.colors;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: AppText.titleMediumBold(context.l10n.changePackageConfirmTitle),
        content: AppText.bodyMedium(
          '${package.name} — ৳${package.priceBdt.toStringAsFixed(0)} ${context.l10n.perMonth}',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: AppText.bodyMediumBold(context.l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: AppText.bodyMediumBold(
              context.l10n.selectPackage,
              color: theme.primary,
            ),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    await context.read<PackagesCubit>().changePackage(
      connectionId: connectionId,
      packageId: package.id,
    );
    if (!context.mounted) return;

    final state = context.read<PackagesCubit>().state;
    if (state.changeStatus.isSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.l10n.changePackageSuccess),
          backgroundColor: theme.success,
          behavior: SnackBarBehavior.floating,
        ),
      );
      context.router.maybePop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(
          isChangeMode
              ? context.l10n.changePackageTitle
              : context.l10n.internetPackagesTitle,
        ),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocBuilder<PackagesCubit, PackagesState>(
        builder: (context, state) {
          if (state.status.isLoading && state.packages.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status.isFailure && state.packages.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText.bodyMedium(context.l10n.somethingWentWrong),
                  Gap(AppConstant.verticalGap12),
                  OutlinedButton(
                    onPressed: () => context.read<PackagesCubit>().loadPackages(
                      connectionId,
                    ),
                    child: AppText.bodyMediumBold(context.l10n.retry),
                  ),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: EdgeInsets.all(AppConstant.horizontalGap16),
            itemCount: state.packages.length,
            separatorBuilder: (_, _) => Gap(AppConstant.verticalGap16),
            itemBuilder: (context, index) {
              final package = state.packages[index];
              return PackageCard(
                package: package,
                onSelect: isChangeMode
                    ? () => _onSelect(context, package)
                    : null,
              );
            },
          );
        },
      ),
    );
  }
}
