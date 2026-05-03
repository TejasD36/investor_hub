import '../../../../core.dart';
import '../../../interests/presentation/bloc/interests_bloc.dart';
import '../../../interests/presentation/bloc/interests_event.dart';
import '../../../interests/presentation/bloc/interests_state.dart';
import '../../data/models/deal_model.dart';
import 'risk_level_chip.dart';
import 'status_chip.dart';

class DealCard extends StatelessWidget {
  final DealModel deal;

  const DealCard({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () => context.pushNamed(AppRoute.dealDetails.name, extra: deal),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(gradient: AppColor.primaryGradient, borderRadius: BorderRadius.circular(14)),
                    child: const Icon(Icons.business_center, color: Colors.white, size: 22),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          deal.companyName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                        ),

                        const SizedBox(height: 2),

                        Text(deal.industry, style: theme.textTheme.bodySmall?.copyWith(color: AppColor.grey)),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),

                  BlocBuilder<InterestsBloc, InterestsState>(
                    builder: (context, state) {
                      final isInterested = state.maybeWhen(
                        loaded: (interests) => interests.any((item) => item.id == deal.id),
                        orElse: () => false,
                      );

                      return IconButton(
                        onPressed: () {
                          if (isInterested) {
                            context.read<InterestsBloc>().add(InterestsEvent.removeInterest(dealId: deal.id));
                          } else {
                            context.read<InterestsBloc>().add(InterestsEvent.addInterest(deal: deal));
                          }
                        },
                        visualDensity: VisualDensity.compact,
                        icon: Icon(
                          isInterested ? Icons.star_rounded : Icons.star_border_rounded,
                          color: isInterested ? Colors.amber : AppColor.grey,
                          size: 30,
                        ),
                        tooltip: isInterested ? 'Saved' : 'Save Deal',
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: _CompactMetricTile(title: 'Investment', value: '₹${(deal.investmentRequired / 100000).toStringAsFixed(1)}L'),
                  ),

                  Container(width: 1, height: 36, color: AppColor.lightGrey),

                  Expanded(
                    child: _CompactMetricTile(title: 'ROI', value: '${deal.expectedRoi.toStringAsFixed(1)}%', valueColor: AppColor.green),
                  ),
                ],
              ),
              const SizedBox(height: 14),

              Row(
                children: [
                  RiskLevelChip(riskLevel: deal.riskLevel),
                  const SizedBox(width: 8),
                  StatusChip(status: deal.status),

                  const Spacer(),

                  TextButton.icon(
                    onPressed: () => context.pushNamed(AppRoute.dealDetails.name, extra: deal),
                    icon: const Icon(Icons.arrow_forward_rounded, size: 18),
                    label: const Text('Details'),
                    style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CompactMetricTile extends StatelessWidget {
  final String title;
  final String value;
  final Color? valueColor;

  const _CompactMetricTile({required this.title, required this.value, this.valueColor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: theme.textTheme.bodySmall?.copyWith(color: AppColor.grey)),

        const SizedBox(height: 4),

        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700, color: valueColor),
        ),
      ],
    );
  }
}
