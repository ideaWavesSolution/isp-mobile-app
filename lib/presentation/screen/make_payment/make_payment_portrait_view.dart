import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/enum/payment_method.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/buttons/_primary_button.dart';
import 'package:isp_mobile_app/presentation/widgets/input_widget/widgets.dart';

import 'cubit/make_payment_cubit.dart';

class MakePaymentPortraitView extends StatefulWidget {
  const MakePaymentPortraitView({
    super.key,
    required this.method,
    this.initialAmount,
  });

  final PaymentMethod method;
  final double? initialAmount;

  @override
  State<MakePaymentPortraitView> createState() =>
      _MakePaymentPortraitViewState();
}

class _MakePaymentPortraitViewState extends State<MakePaymentPortraitView> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialAmount != null) {
      _amountController.text = widget.initialAmount!.toStringAsFixed(0);
    }
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  String _methodLabel(BuildContext context, PaymentMethod method) {
    return switch (method) {
      PaymentMethod.bkash => context.l10n.paymentMethodBkash,
      PaymentMethod.ssl => context.l10n.paymentMethodSsl,
      PaymentMethod.nagad => context.l10n.paymentMethodNagad,
      PaymentMethod.cash => context.l10n.paymentMethodCash,
    };
  }

  void _pay() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final amount = double.tryParse(_amountController.text.trim()) ?? 0;
    context.read<MakePaymentCubit>().pay(amount: amount, method: widget.method);
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(context.l10n.makePaymentTitle),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocBuilder<MakePaymentCubit, MakePaymentState>(
        builder: (context, state) {
          if (state.payStatus.isLoading) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  Gap(AppConstant.verticalGap16),
                  AppText.bodyMedium(context.l10n.paymentProcessing),
                ],
              ),
            );
          }

          if (state.payStatus.isSuccess && state.payment != null) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(AppConstant.horizontalGap20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: theme.success,
                      size: 72,
                    ),
                    Gap(AppConstant.verticalGap16),
                    AppText.titleLargeBold(context.l10n.paymentSuccessTitle),
                    Gap(AppConstant.verticalGap8),
                    AppText.bodyMedium(
                      context.l10n.paymentSuccessMessage,
                      textAlign: TextAlign.center,
                    ),
                    Gap(AppConstant.verticalGap8),
                    AppText.headlineSmallBold(
                      '৳${state.payment!.amountPaid.toStringAsFixed(0)}',
                      color: theme.primary,
                    ),
                    Gap(AppConstant.verticalGap20 * 1.5),
                    SizedBox(
                      width: double.infinity,
                      child: PrimaryButton(
                        onPressed: () => context.router.popUntilRoot(),
                        title: context.l10n.backToDashboard,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(AppConstant.horizontalGap20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(AppConstant.horizontalGap16),
                    decoration: BoxDecoration(
                      color: theme.primary.withAlpha(20),
                      borderRadius: BorderRadius.circular(
                        AppConstant.borderRadius12,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_rounded,
                          color: theme.primary,
                        ),
                        Gap(AppConstant.horizontalGap12),
                        AppText.bodyMediumBold(
                          '${context.l10n.paymentMethodLabel}: ${_methodLabel(context, widget.method)}',
                        ),
                      ],
                    ),
                  ),
                  Gap(AppConstant.verticalGap20),
                  AppText.labelLargeBold(context.l10n.amountLabel),
                  Gap(AppConstant.verticalGap8),
                  AppTextField(
                    controller: _amountController,
                    hint: context.l10n.amountLabel,
                    textFieldType: AppTextFieldType.number,
                    validator: (value) {
                      final parsed = double.tryParse(value?.trim() ?? '');
                      if (parsed == null || parsed <= 0) {
                        return context.l10n.fieldEmpty;
                      }
                      return null;
                    },
                  ),
                  Gap(AppConstant.verticalGap20 * 1.5),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: _pay,
                      title: context.l10n.payNowButton,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
