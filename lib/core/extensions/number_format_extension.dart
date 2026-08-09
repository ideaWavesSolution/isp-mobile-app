/// Formatting helpers for byte counts and durations shown in the usage
/// stats on the dashboard (Upload / Download / Uptime, bandwidth graph).
extension ByteFormat on num {
  /// Formats a byte count as e.g. `7.41 GB`, `282.04 GB`, `512.00 KB`.
  String toReadableBytes({int decimals = 2}) {
    if (this <= 0) return '0 B';
    const units = ['B', 'KB', 'MB', 'GB', 'TB'];
    var value = toDouble();
    var unitIndex = 0;
    while (value >= 1024 && unitIndex < units.length - 1) {
      value /= 1024;
      unitIndex++;
    }
    return '${value.toStringAsFixed(unitIndex == 0 ? 0 : decimals)} ${units[unitIndex]}';
  }
}

extension DurationFormat on Duration {
  /// Formats as e.g. `1d 2h 42m 24s`.
  String toReadableUptime() {
    final days = inDays;
    final hours = inHours % 24;
    final minutes = inMinutes % 60;
    final seconds = inSeconds % 60;
    final parts = <String>[
      if (days > 0) '${days}d',
      if (hours > 0 || days > 0) '${hours}h',
      if (minutes > 0 || hours > 0 || days > 0) '${minutes}m',
      '${seconds}s',
    ];
    return parts.join(' ');
  }
}
