import 'package:flutter/material.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

/// Generic dark-header history table used by Payment History and the
/// Support & Ticket complaint history screens. Columns are laid out with
/// flex so it fits the screen width without needing to scroll horizontally.
class HistoryTable extends StatelessWidget {
  const HistoryTable({
    super.key,
    required this.columns,
    required this.rows,
    required this.emptyMessage,
    this.columnFlex,
  });

  final List<String> columns;
  final List<List<Widget>> rows;
  final String emptyMessage;
  final List<int>? columnFlex;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    return Container(
      decoration: BoxDecoration(
        color: theme.surfaceElevated,
        borderRadius: BorderRadius.circular(AppConstant.borderRadius12),
        border: Border.all(color: theme.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: theme.onBackground,
            padding: EdgeInsets.symmetric(
              horizontal: AppConstant.horizontalGap12,
              vertical: AppConstant.verticalGap12,
            ),
            child: Row(
              children: [
                for (var i = 0; i < columns.length; i++)
                  Expanded(
                    flex: columnFlex != null ? columnFlex![i] : 1,
                    child: AppText.labelSmallBold(
                      columns[i],
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
          if (rows.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppConstant.verticalGap20,
              ),
              child: Center(
                child: AppText.bodyMedium(
                  emptyMessage,
                  color: theme.onSurface.withAlpha(153),
                ),
              ),
            )
          else
            for (var r = 0; r < rows.length; r++)
              Container(
                decoration: BoxDecoration(
                  color: r.isEven ? theme.surface : theme.background,
                  border: Border(top: BorderSide(color: theme.border)),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstant.horizontalGap12,
                  vertical: AppConstant.verticalGap12,
                ),
                child: Row(
                  children: [
                    for (var i = 0; i < rows[r].length; i++)
                      Expanded(
                        flex: columnFlex != null ? columnFlex![i] : 1,
                        child: rows[r][i],
                      ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
