import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/core/extensions/number_format_extension.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/route/app_router.gr.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/connection_selector.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/customer_header_bar.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/menu_grid_tile.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/quick_action_tile.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/summary_stat_grid.dart';

import 'components/bandwidth_chart.dart';
import 'cubit/dashboard_cubit.dart';

class DashboardPortraitView extends StatelessWidget {
  const DashboardPortraitView({super.key});

  Future<void> _confirmLogout(BuildContext context) async {
    final theme = context.colors;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: AppText.titleMediumBold(context.l10n.logoutConfirmTitle),
        content: AppText.bodyMedium(context.l10n.logoutConfirmMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: AppText.bodyMediumBold(context.l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: AppText.bodyMediumBold(
              context.l10n.logout,
              color: theme.error,
            ),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      await context.read<DashboardCubit>().logout();
      if (context.mounted) {
        context.router.replaceAll([const LogInRoute()]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          final connection = state.selectedConnection;

          return RefreshIndicator(
            onRefresh: () => context.read<DashboardCubit>().loadDashboard(),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomerHeaderBar(
                    customer: state.customer,
                    showHome: false,
                    onLogout: () => _confirmLogout(context),
                    bottom: state.connections.length > 1
                        ? ConnectionSelector(
                            connections: state.connections,
                            selected: connection,
                            onSelect: (id) => context
                                .read<DashboardCubit>()
                                .selectConnection(id),
                          )
                        : null,
                  ),
                ),
                if (state.status.isLoading && state.customer == null)
                  const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  )
                else if (state.status.isFailure && state.customer == null)
                  SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppText.bodyMedium(context.l10n.somethingWentWrong),
                          Gap(AppConstant.verticalGap12),
                          OutlinedButton(
                            onPressed: () =>
                                context.read<DashboardCubit>().loadDashboard(),
                            child: AppText.bodyMediumBold(context.l10n.retry),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  SliverPadding(
                    padding: EdgeInsets.all(AppConstant.horizontalGap16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        _QuickActionsRow(connection: connection),
                        Gap(AppConstant.verticalGap20),
                        if (connection != null) ...[
                          SummaryStatGrid(
                            items: [
                              SummaryStatItem(
                                icon: Icons.receipt_long_rounded,
                                iconColor: theme.info,
                                label: context.l10n.monthlyBillLabel,
                                value:
                                    '৳${connection.monthlyBill.toStringAsFixed(0)}',
                              ),
                              SummaryStatItem(
                                icon: Icons.error_outline_rounded,
                                iconColor: theme.error,
                                label: context.l10n.balanceDueLabel,
                                value:
                                    '৳${connection.balanceDue.toStringAsFixed(0)}',
                              ),
                              SummaryStatItem(
                                icon: Icons.inventory_2_rounded,
                                iconColor: theme.primary,
                                label: context.l10n.packageLabel,
                                value: connection.packageName,
                              ),
                              SummaryStatItem(
                                icon: Icons.event_busy_rounded,
                                iconColor: theme.warning,
                                label: context.l10n.expireDateLabel,
                                value: DateFormat(
                                  'dd/MM/yyyy',
                                ).format(connection.expireDate),
                              ),
                            ],
                          ),
                          Gap(AppConstant.verticalGap20),
                        ],
                        _MenuGrid(connectionId: connection?.id),
                        Gap(AppConstant.verticalGap20),
                        if (connection != null) ...[
                          _UsageStatsRow(
                            uploadBytes: connection.uploadBytes,
                            downloadBytes: connection.downloadBytes,
                            uptime: connection.uptime,
                          ),
                          Gap(AppConstant.verticalGap20),
                        ],
                        BandwidthChart(points: state.bandwidth),
                      ]),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _QuickActionsRow extends StatelessWidget {
  const _QuickActionsRow({required this.connection});

  final ConnectionEntity? connection;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;
    final connection = this.connection;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        QuickActionTile(
          icon: Icons.account_balance_wallet_rounded,
          color: theme.info,
          label: context.l10n.quickActionBkash,
          onTap: connection == null
              ? null
              : () async {
                  await context.router.push(
                    MakePaymentRoute(
                      method: PaymentMethod.bkash,
                      connectionId: connection.id,
                      initialAmount: connection.balanceDue,
                    ),
                  );
                  if (context.mounted) {
                    context.read<DashboardCubit>().loadDashboard();
                  }
                },
        ),
        QuickActionTile(
          icon: Icons.credit_card_rounded,
          color: theme.success,
          label: context.l10n.quickActionSsl,
          onTap: connection == null
              ? null
              : () async {
                  await context.router.push(
                    MakePaymentRoute(
                      method: PaymentMethod.ssl,
                      connectionId: connection.id,
                      initialAmount: connection.balanceDue,
                    ),
                  );
                  if (context.mounted) {
                    context.read<DashboardCubit>().loadDashboard();
                  }
                },
        ),
        QuickActionTile(
          icon: Icons.swap_horiz_rounded,
          color: theme.warning,
          label: context.l10n.quickActionChangePackage,
          onTap: connection == null
              ? null
              : () async {
                  await context.router.push(
                    PackagesRoute(
                      connectionId: connection.id,
                      isChangeMode: true,
                    ),
                  );
                  if (context.mounted) {
                    context.read<DashboardCubit>().loadDashboard();
                  }
                },
        ),
        QuickActionTile(
          icon: Icons.confirmation_number_rounded,
          color: theme.error,
          label: context.l10n.quickActionCreateTicket,
          onTap: () => context.router.push(const CreateTicketRoute()),
        ),
      ],
    );
  }
}

class _MenuGrid extends StatelessWidget {
  const _MenuGrid({required this.connectionId});

  final String? connectionId;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppConstant.verticalGap12,
      crossAxisSpacing: AppConstant.horizontalGap12,
      childAspectRatio: 1.4,
      children: [
        MenuGridTile(
          icon: Icons.wifi_rounded,
          color: theme.error,
          label: context.l10n.menuInternetPackages,
          onTap: connectionId == null
              ? () {}
              : () => context.router.push(
                  PackagesRoute(
                    connectionId: connectionId!,
                    isChangeMode: false,
                  ),
                ),
        ),
        MenuGridTile(
          icon: Icons.live_tv_rounded,
          color: theme.info,
          label: context.l10n.menuLiveTvFtp,
          onTap: () => context.router.push(const MediaRoute()),
        ),
        MenuGridTile(
          icon: Icons.receipt_long_rounded,
          color: theme.success,
          label: context.l10n.menuPaymentHistory,
          onTap: () => context.router.push(const PaymentHistoryRoute()),
        ),
        MenuGridTile(
          icon: Icons.support_agent_rounded,
          color: theme.warning,
          label: context.l10n.menuSupportTicket,
          onTap: () => context.router.push(const SupportTicketRoute()),
        ),
      ],
    );
  }
}

class _UsageStatsRow extends StatelessWidget {
  const _UsageStatsRow({
    required this.uploadBytes,
    required this.downloadBytes,
    required this.uptime,
  });

  final double uploadBytes;
  final double downloadBytes;
  final Duration uptime;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstant.horizontalGap12,
        vertical: AppConstant.verticalGap16,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [theme.info.withAlpha(23), theme.success.withAlpha(23)],
        ),
        borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
        border: Border.all(color: theme.border),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _stat(
            context,
            Icons.arrow_upward_rounded,
            theme.error,
            context.l10n.uploadLabel,
            uploadBytes.toReadableBytes(),
          ),
          _stat(
            context,
            Icons.swap_vert_rounded,
            theme.info,
            context.l10n.uptimeLabel,
            uptime.toReadableUptime(),
          ),
          _stat(
            context,
            Icons.arrow_downward_rounded,
            theme.success,
            context.l10n.downloadLabel,
            downloadBytes.toReadableBytes(),
          ),
        ],
      ),
    );
  }

  Widget _stat(
    BuildContext context,
    IconData icon,
    Color color,
    String label,
    String value,
  ) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 18),
          Gap(4),
          AppText.bodySmall(
            label,
            color: context.colors.onSurface.withAlpha(153),
          ),
          AppText.labelSmallBold(value, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
