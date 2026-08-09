import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

/// One item in the top "bKash Payment / SSL Payment / Change Package /
/// Create Ticket" quick-action row.
class QuickActionTile extends StatelessWidget {
  const QuickActionTile({
    super.key,
    required this.icon,
    required this.color,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppConstant.borderRadius12),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppConstant.verticalGap4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(AppConstant.horizontalGap12),
              decoration: BoxDecoration(
                color: color.withAlpha(31),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 26),
            ),
            Gap(AppConstant.verticalGap4),
            SizedBox(
              width: 72,
              child: AppText.bodySmall(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
