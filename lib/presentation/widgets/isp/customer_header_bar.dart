import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/customer_status.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/app_colors.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

/// Persistent top section shown on every screen after login — avatar, name,
/// username, status pill and Home/Logout icon buttons. Mirrors the header
/// present on every screenshot of the reference app.
class CustomerHeaderBar extends StatelessWidget {
  const CustomerHeaderBar({
    super.key,
    required this.customer,
    this.onHome,
    this.onLogout,
    this.showHome = true,
    this.bottom,
  });

  final CustomerEntity? customer;
  final VoidCallback? onHome;
  final VoidCallback? onLogout;
  final bool showHome;

  /// Extra content (e.g. the "Select connection" dropdown) rendered inside
  /// the gradient header, below the profile row. Dashboard-only.
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppConstant.horizontalGap16,
        vertical: AppConstant.verticalGap16,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [theme.primary, theme.secondary],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white.withAlpha(51),
                  child: const Icon(
                    Icons.person_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                Gap(AppConstant.horizontalGap12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.titleMediumBold(
                        customer?.name ?? '—',
                        color: Colors.white,
                      ),
                      Gap(2),
                      AppText.bodySmall(
                        '${context.l10n.usernamePrefix}${customer?.username ?? '—'}',
                        color: Colors.white.withAlpha(217),
                      ),
                      Gap(2),
                      Row(
                        children: [
                          AppText.bodySmall(
                            context.l10n.statusPrefix,
                            color: Colors.white.withAlpha(217),
                          ),
                          AppText.bodySmallBold(
                            _statusLabel(context, customer?.status),
                            color: _statusColor(theme, customer?.status),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (showHome)
                  IconButton(
                    onPressed: onHome,
                    tooltip: context.l10n.homeTooltip,
                    icon: const Icon(Icons.home_rounded, color: Colors.white),
                  ),
                IconButton(
                  onPressed: onLogout,
                  tooltip: context.l10n.logoutTooltip,
                  icon: const Icon(Icons.logout_rounded, color: Colors.white),
                ),
              ],
            ),
            if (bottom != null) ...[Gap(AppConstant.verticalGap12), bottom!],
          ],
        ),
      ),
    );
  }

  String _statusLabel(BuildContext context, CustomerStatus? status) {
    return switch (status) {
      CustomerStatus.active => context.l10n.statusActive,
      CustomerStatus.inactive => context.l10n.statusInactive,
      CustomerStatus.suspended => context.l10n.statusSuspended,
      null => '—',
    };
  }

  Color _statusColor(AppColors theme, CustomerStatus? status) {
    return switch (status) {
      CustomerStatus.active => theme.success,
      CustomerStatus.inactive => theme.disabled,
      CustomerStatus.suspended => theme.error,
      null => Colors.white,
    };
  }
}
