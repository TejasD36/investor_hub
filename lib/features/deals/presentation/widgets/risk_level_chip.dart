import '../../../../core.dart';

class RiskLevelChip extends StatelessWidget {
  final String riskLevel;

  const RiskLevelChip({super.key, required this.riskLevel});

  @override
  Widget build(BuildContext context) {
    Color color;

    switch (riskLevel.toLowerCase()) {
      case 'low':
        color = AppColor.lowRisk;
        break;
      case 'medium':
        color = AppColor.mediumRisk;
        break;
      case 'high':
        color = AppColor.highRisk;
        break;
      default:
        color = AppColor.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(20)),
      child: Text(
        riskLevel,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: color, fontWeight: FontWeight.w600),
      ),
    );
  }
}
