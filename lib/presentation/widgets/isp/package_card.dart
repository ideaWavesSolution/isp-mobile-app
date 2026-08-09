import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/buttons/_primary_button.dart';

/// A single internet package tier card — used by both the read-only
/// "Internet Packages" screen and the "Change Package" selection screen.
class PackageCard extends StatelessWidget {
  const PackageCard({super.key, required this.package, this.onSelect});

  final PackageEntity package;
  final FutureOr<void> Function()? onSelect;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppConstant.horizontalGap20),
      decoration: BoxDecoration(
        color: package.isCurrent
            ? theme.primary.withAlpha(18)
            : theme.surfaceElevated,
        borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
        border: Border.all(
          color: package.isCurrent ? theme.primary : theme.border,
          width: package.isCurrent ? 1.6 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.shadow.withAlpha(30),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          if (package.isCurrent) ...[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstant.horizontalGap8,
                  vertical: AppConstant.verticalGap4,
                ),
                decoration: BoxDecoration(
                  color: theme.primary.withAlpha(31),
                  borderRadius: BorderRadius.circular(
                    AppConstant.borderRadius100,
                  ),
                ),
                child: AppText.labelSmallBold(
                  context.l10n.currentPackageBadge,
                  color: theme.primary,
                ),
              ),
            ),
            Gap(AppConstant.verticalGap8),
          ],
          AppText.displaySmallBold(package.name, color: theme.primary),
          Gap(AppConstant.verticalGap8),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstant.horizontalGap16,
              vertical: AppConstant.verticalGap4,
            ),
            decoration: BoxDecoration(
              color: theme.success,
              borderRadius: BorderRadius.circular(AppConstant.borderRadius100),
            ),
            child: AppText.bodyMediumBold(
              '৳${package.priceBdt.toStringAsFixed(0)} ${context.l10n.perMonth}',
              color: Colors.white,
            ),
          ),
          Gap(AppConstant.verticalGap16),
          Column(
            children: package.features
                .map(
                  (f) => Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppConstant.verticalGap4,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: theme.success,
                          size: 18,
                        ),
                        Gap(AppConstant.horizontalGap8),
                        Expanded(child: AppText.bodyMedium(f)),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          if (onSelect != null) ...[
            Gap(AppConstant.verticalGap16),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                onPressed: onSelect!,
                title: package.isCurrent
                    ? context.l10n.currentPackageBadge
                    : context.l10n.selectPackage,
                backgroundColor: package.isCurrent
                    ? theme.disabled
                    : theme.primary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
