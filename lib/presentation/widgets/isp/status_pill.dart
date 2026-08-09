import 'package:flutter/material.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

class StatusPill extends StatelessWidget {
  const StatusPill({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstant.horizontalGap8,
        vertical: AppConstant.verticalGap4,
      ),
      decoration: BoxDecoration(
        color: color.withAlpha(31),
        borderRadius: BorderRadius.circular(AppConstant.borderRadius100),
      ),
      child: AppText.labelSmallBold(label, color: color),
    );
  }
}
