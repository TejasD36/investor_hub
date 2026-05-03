import '../../../../core.dart';

class RoiProjectionChart extends StatelessWidget {
  final double roi;

  const RoiProjectionChart({super.key, required this.roi});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ROI Projection', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),

            const SizedBox(height: 20),

            SizedBox(
              height: 220,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 2,
                  minY: 0,
                  maxY: roi + 5,

                  gridData: FlGridData(show: true, drawVerticalLine: true, horizontalInterval: 5, verticalInterval: 1),


                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 38,
                        interval: 5,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(value.toInt().toString(), style: theme.textTheme.bodySmall),
                          );
                        },
                      ),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text('Y1');
                            case 1:
                              return const Text('Y2');
                            case 2:
                              return const Text('Y3');
                            default:
                              return const SizedBox();
                          }
                        },
                      ),
                    ),

                    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

                    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),

                  borderData: FlBorderData(show: false),

                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      spots: [FlSpot(0, roi * 0.4), FlSpot(1, roi * 0.7), FlSpot(2, roi)],
                      barWidth: 4,
                      dotData: const FlDotData(show: true),
                      belowBarData: BarAreaData(show: true, color: theme.colorScheme.primary.withValues(alpha: 0.12)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
