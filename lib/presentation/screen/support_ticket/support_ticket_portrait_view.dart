import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/enum/ticket_status.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/route/app_router.gr.dart';
import 'package:isp_mobile_app/presentation/theme/base/app_colors.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/history_table.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/section_title.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/status_pill.dart';

import 'cubit/support_ticket_cubit.dart';

class SupportTicketPortraitView extends StatelessWidget {
  const SupportTicketPortraitView({super.key});

  String _statusLabel(BuildContext context, TicketStatus status) {
    return switch (status) {
      TicketStatus.open => context.l10n.ticketStatusOpen,
      TicketStatus.pending => context.l10n.ticketStatusPending,
      TicketStatus.resolved => context.l10n.ticketStatusResolved,
      TicketStatus.closed => context.l10n.ticketStatusClosed,
    };
  }

  Color _statusColor(AppColors theme, TicketStatus status) {
    return switch (status) {
      TicketStatus.open => theme.info,
      TicketStatus.pending => theme.warning,
      TicketStatus.resolved => theme.success,
      TicketStatus.closed => theme.disabled,
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(context.l10n.supportTicketTitle),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await context.router.push(const CreateTicketRoute());
          if (context.mounted) {
            context.read<SupportTicketCubit>().loadTickets();
          }
        },
        icon: const Icon(Icons.add_rounded),
        label: AppText.bodyMediumBold(
          context.l10n.quickActionCreateTicket,
          color: theme.onPrimary,
        ),
        backgroundColor: theme.primary,
      ),
      body: BlocBuilder<SupportTicketCubit, SupportTicketState>(
        builder: (context, state) {
          if (state.status.isLoading && state.tickets.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(AppConstant.horizontalGap16),
            child: Column(
              children: [
                SectionTitle(title: context.l10n.complaintHistoryTitle),
                Gap(AppConstant.verticalGap16),
                HistoryTable(
                  columns: [
                    context.l10n.colDate,
                    context.l10n.colType,
                    context.l10n.colIssue,
                    context.l10n.colStatus,
                    context.l10n.colCreated,
                  ],
                  columnFlex: const [2, 2, 3, 2, 2],
                  emptyMessage: context.l10n.noComplainFound,
                  rows: [
                    for (final t in state.tickets)
                      [
                        AppText.bodySmall(
                          DateFormat('dd/MM/yyyy').format(t.date),
                        ),
                        AppText.bodySmall(t.type),
                        AppText.bodySmall(t.issue, maxLines: 2),
                        StatusPill(
                          label: _statusLabel(context, t.status),
                          color: _statusColor(theme, t.status),
                        ),
                        AppText.bodySmall(t.createdBy),
                      ],
                  ],
                ),
                Gap(AppConstant.verticalGap20 * 2),
              ],
            ),
          );
        },
      ),
    );
  }
}
