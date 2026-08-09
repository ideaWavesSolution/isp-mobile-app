import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/core/error/error_localization.dart';
import 'package:isp_mobile_app/core/state_status/base_status.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/route/app_router.gr.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/buttons/_primary_button.dart';
import 'package:isp_mobile_app/presentation/widgets/input_widget/widgets.dart';

import 'cubit/login_cubit.dart';

class LogInPortraitView extends StatefulWidget {
  const LogInPortraitView({super.key});

  @override
  State<LogInPortraitView> createState() => _LogInPortraitViewState();
}

class _LogInPortraitViewState extends State<LogInPortraitView> {
  final _formKey = GlobalKey<FormState>();
  final ipController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    ipController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _onLogin() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    context.read<LoginCubit>().login(
      LoginEntity(
        ip: ipController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Scaffold(
      backgroundColor: theme.primary,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [theme.primary, theme.secondary],
          ),
        ),
        child: SafeArea(
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state.loginStatus.isFailure) {
                final error = (state.loginStatus as Failure).responseError;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      context.errorLocalization.responseError(error),
                    ),
                    backgroundColor: theme.error,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
              if (state.loginStatus.isSuccess) {
                context.router.replace(const DashboardRoute());
              }
            },
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstant.horizontalGap20,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppConstant.horizontalGap20),
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(51),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.wifi_tethering_rounded,
                          size: 56,
                          color: Colors.white,
                        ),
                      ),
                      Gap(AppConstant.verticalGap16),
                      AppText.displaySmallBold(
                        context.l10n.appName,
                        color: Colors.white,
                      ),
                      Gap(AppConstant.verticalGap8 / 2),
                      AppText.bodySmall(
                        context.l10n.splashTagline,
                        textAlign: TextAlign.center,
                        color: Colors.white.withAlpha(217),
                      ),
                      Gap(AppConstant.verticalGap20 * 1.2),

                      // Login card
                      Container(
                        padding: EdgeInsets.all(
                          AppConstant.horizontalGap20 + 4,
                        ),
                        decoration: BoxDecoration(
                          color: theme.surfaceElevated,
                          borderRadius: BorderRadius.circular(
                            AppConstant.borderRadius20,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: theme.shadow.withAlpha(60),
                              blurRadius: 24,
                              offset: const Offset(0, 12),
                            ),
                          ],
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.displaySmallBold(
                                context.l10n.loginWelcomeTitle,
                                style: context.textStyle.headlineSmall,
                              ),
                              Gap(AppConstant.verticalGap4),
                              AppText.bodyMedium(
                                context.l10n.loginSubtitle,
                                color: theme.onSurface.withAlpha(153),
                              ),
                              Gap(AppConstant.verticalGap20),
                              AppTextField(
                                controller: ipController,
                                hint: context.l10n.ipHint,
                                textFieldType: AppTextFieldType.none,
                                prefixIcon: const Icon(Icons.dns_outlined),
                                fillColor: theme.background,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return context.l10n.ipRequired;
                                  }
                                  return null;
                                },
                              ),
                              Gap(AppConstant.verticalGap16),
                              AppTextField(
                                controller: passwordController,
                                hint: context.l10n.loginPasswordHint,
                                textFieldType: AppTextFieldType.password,
                                fillColor: theme.background,
                              ),
                              Gap(AppConstant.verticalGap20),
                              BlocBuilder<LoginCubit, LoginState>(
                                builder: (context, state) {
                                  return SizedBox(
                                    width: double.infinity,
                                    child: PrimaryButton(
                                      onPressed: _onLogin,
                                      title: context.l10n.login,
                                    ),
                                  );
                                },
                              ),
                              Gap(AppConstant.verticalGap16),
                              const Divider(),
                              Gap(AppConstant.verticalGap12),
                              Center(
                                child: AppText.bodySmall(
                                  context.l10n.noAccountQuestion,
                                  color: theme.onSurface.withAlpha(153),
                                ),
                              ),
                              Gap(AppConstant.verticalGap8),
                              Center(
                                child: OutlinedButton(
                                  onPressed: () => context.router.push(
                                    const RegisterRoute(),
                                  ),
                                  child: AppText.bodyMediumBold(
                                    context.l10n.registerNow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
