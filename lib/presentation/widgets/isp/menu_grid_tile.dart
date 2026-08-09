import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

/// One colored tile in the "Internet Packages / Live TV & FTP / Payment
/// History / Support & Ticket" menu grid.
class MenuGridTile extends StatelessWidget {
  const MenuGridTile({
    super.key,
    required this.icon,
    required this.color,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppConstant.verticalGap16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
          boxShadow: [
            BoxShadow(
              color: color.withAlpha(77),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 28),
            Gap(AppConstant.verticalGap8),
            AppText.bodySmallBold(
              label,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
