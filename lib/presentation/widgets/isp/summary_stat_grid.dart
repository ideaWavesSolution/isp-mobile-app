import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

class SummaryStatItem {
  const SummaryStatItem({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final Color iconColor;
  final String label;
  final String value;
}

/// The 2x2 "Monthly Bill / Balance Due / Package / Expire Date" grid shown
/// on the dashboard — each tile is tinted with its own accent color so the
/// cards stay visually distinct against the page background.
class SummaryStatGrid extends StatelessWidget {
  const SummaryStatGrid({super.key, required this.items});

  final List<SummaryStatItem> items;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppConstant.verticalGap12,
      crossAxisSpacing: AppConstant.horizontalGap12,
      childAspectRatio: 1.7,
      children: items.map(_buildItem).toList(),
    );
  }

  Widget _buildItem(SummaryStatItem item) {
    return Builder(
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(AppConstant.horizontalGap12),
          decoration: BoxDecoration(
            color: item.iconColor.withAlpha(28),
            borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
            border: Border.all(color: item.iconColor.withAlpha(64)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(AppConstant.horizontalGap8),
                decoration: BoxDecoration(
                  color: item.iconColor.withAlpha(46),
                  shape: BoxShape.circle,
                ),
                child: Icon(item.icon, color: item.iconColor, size: 18),
              ),
              Gap(AppConstant.verticalGap8),
              AppText.bodySmall(item.label, color: item.iconColor),
              AppText.titleSmallBold(item.value),
            ],
          ),
        );
      },
    );
  }
}
