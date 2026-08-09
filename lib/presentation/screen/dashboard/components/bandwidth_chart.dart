import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:isp_mobile_app/core/constants/app_constant.dart';
import 'package:isp_mobile_app/core/extensions/number_format_extension.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/l10n/l10n.dart';
import 'package:isp_mobile_app/presentation/theme/base/theme_extension.dart';
import 'package:isp_mobile_app/presentation/theme/text/app_text.dart';

/// RX/TX bandwidth usage line chart shown on the dashboard.
class BandwidthChart extends StatelessWidget {
  const BandwidthChart({super.key, required this.points});

  final List<BandwidthPointEntity> points;

  @override
  Widget build(BuildContext context) {
    final theme = context.colors;

    if (points.isEmpty) {
      return const SizedBox.shrink();
    }

    final maxY = [
      ...points.map((p) => p.rxBytes),
      ...points.map((p) => p.txBytes),
    ].reduce((a, b) => a > b ? a : b);
    final chartMaxY = maxY <= 0 ? 1.0 : maxY * 1.2;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppConstant.horizontalGap16),
      decoration: BoxDecoration(
        color: theme.surfaceElevated,
        borderRadius: BorderRadius.circular(AppConstant.borderRadius16),
        border: Border.all(color: theme.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.titleSmallBold(context.l10n.bandwidthUsageTitle),
          Gap(AppConstant.verticalGap8),
          Row(
            children: [
              _LegendDot(color: theme.info, label: context.l10n.rxLabel),
              Gap(AppConstant.horizontalGap16),
              _LegendDot(color: theme.error, label: context.l10n.txLabel),
            ],
          ),
          Gap(AppConstant.verticalGap16),
          SizedBox(
            height: 180,
            child: LineChart(
              LineChartData(
                minY: 0,
                maxY: chartMaxY,
                gridData: FlGridData(
                  drawVerticalLine: false,
                  horizontalInterval: chartMaxY / 4,
                  getDrawingHorizontalLine: (value) =>
                      FlLine(color: theme.border, strokeWidth: 1),
                ),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 48,
                      interval: chartMaxY / 4,
                      getTitlesWidget: (value, meta) => Text(
                        value.toReadableBytes(decimals: 1),
                        style: TextStyle(
                          fontSize: 9,
                          color: theme.onSurface.withAlpha(140),
                        ),
                      ),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 24,
                      interval: (points.length - 1).clamp(1, 999).toDouble(),
                      getTitlesWidget: (value, meta) {
                        final index = value.toInt();
                        if (index < 0 || index >= points.length) {
                          return const SizedBox.shrink();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            DateFormat('HH:mm').format(points[index].time),
                            style: TextStyle(
                              fontSize: 9,
                              color: theme.onSurface.withAlpha(140),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                lineBarsData: [
                  _line(points.map((p) => p.rxBytes).toList(), theme.info),
                  _line(points.map((p) => p.txBytes).toList(), theme.error),
                ],
              ),
            ),
          ),
          Gap(AppConstant.verticalGap12),
          AppText.bodySmall(
            '${context.l10n.uploadLabel}: ${points.last.txBytes.toReadableBytes()}',
            color: theme.error,
          ),
          AppText.bodySmall(
            '${context.l10n.downloadLabel}: ${points.last.rxBytes.toReadableBytes()}',
            color: theme.info,
          ),
        ],
      ),
    );
  }

  LineChartBarData _line(List<double> values, Color color) {
    return LineChartBarData(
      spots: [
        for (var i = 0; i < values.length; i++) FlSpot(i.toDouble(), values[i]),
      ],
      isCurved: true,
      color: color,
      barWidth: 2.5,
      dotData: const FlDotData(show: true),
      belowBarData: BarAreaData(show: false),
    );
  }
}

class _LegendDot extends StatelessWidget {
  const _LegendDot({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const Gap(4),
        AppText.labelSmall(label),
      ],
    );
  }
}
