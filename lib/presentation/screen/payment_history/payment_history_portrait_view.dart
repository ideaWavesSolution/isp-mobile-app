import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/history_table.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/section_title.dart';

import 'cubit/payment_history_cubit.dart';

class PaymentHistoryPortraitView extends StatelessWidget {
  const PaymentHistoryPortraitView({super.key});

  String _methodLabel(BuildContext context, PaymentMethod method) {
    return switch (method) {
      PaymentMethod.bkash => context.l10n.paymentMethodBkash,
      PaymentMethod.ssl => context.l10n.paymentMethodSsl,
      PaymentMethod.nagad => context.l10n.paymentMethodNagad,
      PaymentMethod.cash => context.l10n.paymentMethodCash,
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(context.l10n.paymentHistoryTitle),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocBuilder<PaymentHistoryCubit, PaymentHistoryState>(
        builder: (context, state) {
          if (state.status.isLoading && state.payments.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(AppConstant.horizontalGap16),
            child: Column(
              children: [
                SectionTitle(title: context.l10n.paymentHistoryTitle),
                Gap(AppConstant.verticalGap16),
                HistoryTable(
                  columns: [
                    context.l10n.colSl,
                    context.l10n.colDate,
                    context.l10n.colMonth,
                    context.l10n.colPaid,
                    context.l10n.colMethod,
                    context.l10n.colCreated,
                  ],
                  columnFlex: const [1, 3, 2, 2, 2, 2],
                  emptyMessage: context.l10n.noPaymentFound,
                  rows: [
                    for (var i = 0; i < state.payments.length; i++)
                      [
                        AppText.bodySmall('${i + 1}'),
                        AppText.bodySmall(
                          DateFormat(
                            'dd/MM/yyyy hh:mm a',
                          ).format(state.payments[i].date),
                        ),
                        AppText.bodySmall(state.payments[i].month),
                        AppText.bodySmallBold(
                          state.payments[i].amountPaid.toStringAsFixed(0),
                        ),
                        AppText.bodySmall(
                          _methodLabel(context, state.payments[i].method),
                        ),
                        AppText.bodySmall(state.payments[i].createdBy),
                      ],
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
