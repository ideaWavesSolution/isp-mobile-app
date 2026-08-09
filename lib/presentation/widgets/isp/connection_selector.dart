import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/customer_status.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';
import 'package:isp_mobile_app/presentation/widgets/isp/status_pill.dart';

/// The "Select connection" dropdown shown on the dashboard header — lets a
/// customer with more than one ISP line switch which one's data is shown.
class ConnectionSelector extends StatelessWidget {
  const ConnectionSelector({
    super.key,
    required this.connections,
    required this.selected,
    required this.onSelect,
  });

  final List<ConnectionEntity> connections;
  final ConnectionEntity? selected;
  final ValueChanged<String> onSelect;

  Future<void> _open(BuildContext context) async {
    final theme = context.colors;
    final chosen = await showModalBottomSheet<String>(
      context: context,
      backgroundColor: theme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppConstant.borderRadius20),
        ),
      ),
      builder: (sheetContext) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  AppConstant.horizontalGap20,
                  AppConstant.verticalGap20,
                  AppConstant.horizontalGap20,
                  AppConstant.verticalGap8,
                ),
                child: AppText.titleMediumBold(
                  context.l10n.selectConnectionLabel,
                ),
              ),
              for (final connection in connections)
                ListTile(
                  leading: Icon(
                    Icons.router_rounded,
                    color: connection.id == selected?.id
                        ? theme.primary
                        : theme.onSurface.withAlpha(140),
                  ),
                  title: AppText.bodyMediumBold(connection.name),
                  subtitle: AppText.bodySmall(
                    '${connection.ip} • ${connection.packageName}',
                  ),
                  trailing: connection.id == selected?.id
                      ? Icon(Icons.check_circle_rounded, color: theme.primary)
                      : StatusPill(
                          label: connection.status == CustomerStatus.active
                              ? context.l10n.statusActive
                              : context.l10n.statusInactive,
                          color: connection.status == CustomerStatus.active
                              ? theme.success
                              : theme.disabled,
                        ),
                  onTap: () => Navigator.of(sheetContext).pop(connection.id),
                ),
              Gap(AppConstant.verticalGap8),
            ],
          ),
        );
      },
    );
    if (chosen != null) onSelect(chosen);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _open(context),
      borderRadius: BorderRadius.circular(AppConstant.borderRadius100),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: AppConstant.horizontalGap16,
          vertical: AppConstant.verticalGap12,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(38),
          borderRadius: BorderRadius.circular(AppConstant.borderRadius100),
          border: Border.all(color: Colors.white.withAlpha(77)),
        ),
        child: Row(
          children: [
            const Icon(Icons.router_rounded, color: Colors.white, size: 18),
            Gap(AppConstant.horizontalGap8),
            Expanded(
              child: AppText.bodyMediumBold(
                selected?.name ?? context.l10n.selectConnectionLabel,
                color: Colors.white,
              ),
            ),
            const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
