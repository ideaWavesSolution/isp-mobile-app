import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/core/error/error_localization.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/buttons/_primary_button.dart';
import 'package:isp_mobile_app/presentation/widgets/input_widget/widgets.dart';

import 'cubit/register_cubit.dart';

class RegisterPortraitView extends StatefulWidget {
  const RegisterPortraitView({super.key});

  @override
  State<RegisterPortraitView> createState() => _RegisterPortraitViewState();
}

class _RegisterPortraitViewState extends State<RegisterPortraitView> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _packageInterestController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _packageInterestController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    context.read<RegisterCubit>().register(
      RegistrationEntity(
        fullName: _fullNameController.text.trim(),
        phone: _phoneController.text.trim(),
        address: _addressController.text.trim(),
        packageInterest: _packageInterestController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.background,
      appBar: AppBar(
        title: AppText.titleLargeBold(context.l10n.registerTitle),
        backgroundColor: theme.surface,
        elevation: 0,
      ),
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state.registerStatus.isFailure) {
            final error = (state.registerStatus as Failure).responseError;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.errorLocalization.responseError(error)),
                backgroundColor: theme.error,
                behavior: SnackBarBehavior.floating,
              ),
            );
          }
          if (state.registerStatus.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.l10n.registerSuccessMessage),
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
                  AppText.bodyMedium(
                    context.l10n.registerSubtitle,
                    color: theme.onSurface.withAlpha(153),
                  ),
                  Gap(AppConstant.verticalGap20),
                  AppText.labelLargeBold(context.l10n.fullNameLabel),
                  Gap(AppConstant.verticalGap8),
                  AppTextField(
                    controller: _fullNameController,
                    hint: context.l10n.fullNameHint,
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                        ? context.l10n.fullNameRequired
                        : null,
                  ),
                  Gap(AppConstant.verticalGap16),
                  AppText.labelLargeBold(context.l10n.phoneLabel),
                  Gap(AppConstant.verticalGap8),
                  AppTextField(
                    controller: _phoneController,
                    hint: context.l10n.phoneHint,
                    textFieldType: AppTextFieldType.phone,
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                        ? context.l10n.phoneRequired
                        : null,
                  ),
                  Gap(AppConstant.verticalGap16),
                  AppText.labelLargeBold(context.l10n.addressLabel),
                  Gap(AppConstant.verticalGap8),
                  AppTextField(
                    controller: _addressController,
                    hint: context.l10n.addressHint,
                    maxLines: 3,
                    minLines: 2,
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                        ? context.l10n.addressRequired
                        : null,
                  ),
                  Gap(AppConstant.verticalGap16),
                  AppText.labelLargeBold(context.l10n.packageInterestLabel),
                  Gap(AppConstant.verticalGap8),
                  AppTextField(
                    controller: _packageInterestController,
                    hint: context.l10n.packageInterestHint,
                    validator: (value) =>
                        (value == null || value.trim().isEmpty)
                        ? context.l10n.packageInterestRequired
                        : null,
                  ),
                  Gap(AppConstant.verticalGap20 * 1.5),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: _submit,
                      title: context.l10n.submitRequest,
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
