import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/buttons/_primary_button.dart';
import 'package:isp_mobile_app/presentation/widgets/input_widget/widgets.dart';
import 'package:isp_mobile_app/presentation/widgets/others/widgets.dart';

import 'cubit/create_ticket_cubit.dart';

class CreateTicketPortraitView extends StatefulWidget {
  const CreateTicketPortraitView({super.key});

  @override
  State<CreateTicketPortraitView> createState() =>
      _CreateTicketPortraitViewState();
}

class _CreateTicketPortraitViewState extends State<CreateTicketPortraitView> {
  final _formKey = GlobalKey<FormState>();
  final _issueController = TextEditingController();
  String? _selectedType;

  @override
  void dispose() {
    _issueController.dispose();
    super.dispose();
  }

  void _submit(List<String> types) {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (_selectedType == null) return;

    context.read<CreateTicketCubit>().submit(
      type: _selectedType!,
      issue: _issueController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;
    final types = [
      context.l10n.ticketTypeConnection,
      context.l10n.ticketTypeBilling,
      context.l10n.ticketTypeSpeed,
      context.l10n.ticketTypeOther,
    ];

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(context.l10n.createTicketTitle),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocConsumer<CreateTicketCubit, CreateTicketState>(
        listener: (context, state) {
          if (state.submitStatus.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.l10n.ticketSubmittedMessage),
                backgroundColor: theme.success,
                behavior: SnackBarBehavior.floating,
              ),
            );
            context.router.maybePop();
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(AppConstant.horizontalGap20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.labelLargeBold(context.l10n.ticketTypeLabel),
                  Gap(AppConstant.verticalGap8),
                  DropdownField<String>(
                    value: _selectedType,
                    items: types,
                    hintText: context.l10n.ticketTypeHint,
                    buildTitle: (value) => value,
                    onChanged: (value) => setState(() => _selectedType = value),
                    validator: (value) =>
                        value == null ? context.l10n.ticketTypeHint : null,
                  ),
                  Gap(AppConstant.verticalGap16),
                  AppText.labelLargeBold(context.l10n.issueDescriptionLabel),
                  Gap(AppConstant.verticalGap8),
                  AppTextField(
                    controller: _issueController,
                    hint: context.l10n.issueDescriptionHint,
                    maxLines: 5,
                    minLines: 3,
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                        ? context.l10n.issueDescriptionRequired
                        : null,
                  ),
                  Gap(AppConstant.verticalGap20 * 1.5),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: () => _submit(types),
                      title: context.l10n.submitTicket,
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
