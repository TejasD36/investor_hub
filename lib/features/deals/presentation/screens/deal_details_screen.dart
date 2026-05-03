import '../../../../core.dart';
import '../../../interests/presentation/bloc/interests_bloc.dart';
import '../../../interests/presentation/bloc/interests_event.dart';
import '../../../interests/presentation/bloc/interests_state.dart';
import '../../data/models/deal_model.dart';
import '../widgets/financial_highlights_card.dart';
import '../widgets/interest_button.dart';
import '../widgets/risk_level_chip.dart';
import '../widgets/roi_projection_chart.dart';
import '../widgets/status_chip.dart';

class DealDetailsScreen extends StatelessWidget {
  final DealModel deal;

  const DealDetailsScreen({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(deal.companyName)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(gradient: AppColor.primaryGradient, borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.business_center, color: Colors.white),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(deal.companyName, style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
                                Text(deal.industry, style: theme.textTheme.bodyMedium),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          RiskLevelChip(riskLevel: deal.riskLevel),
                          const SizedBox(width: 10),
                          StatusChip(status: deal.status),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: _MetricItem(title: 'Investment', value: '₹${(deal.investmentRequired / 100000).toStringAsFixed(1)}L'),
                          ),
                          Expanded(
                            child: _MetricItem(
                              title: 'Expected ROI',
                              value: '${deal.expectedRoi.toStringAsFixed(1)}%',
                              valueColor: AppColor.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Text('Company Overview', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),

              const SizedBox(height: 10),

              Text(deal.overview, style: theme.textTheme.bodyMedium),

              const SizedBox(height: 24),

              FinancialHighlightsCard(highlights: deal.financialHighlights),

              const SizedBox(height: 24),

              RoiProjectionChart(roi: deal.expectedRoi),

              const SizedBox(height: 24),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Risk Analysis', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
                      const SizedBox(height: 12),
                      Text(deal.riskExplanation, style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              BlocBuilder<InterestsBloc, InterestsState>(
                builder: (context, state) {
                  final isInterested = state.maybeWhen(
                    loaded: (interests) => interests.any((item) => item.id == deal.id),
                    orElse: () => false,
                  );

                  return InterestButton(
                    isInterested: isInterested,
                    onPressed: () {
                      if (isInterested) {
                        context.read<InterestsBloc>().add(InterestsEvent.removeInterest(dealId: deal.id));

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Removed from My Interests')));
                      } else {
                        context.read<InterestsBloc>().add(InterestsEvent.addInterest(deal: deal));

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Deal added to My Interests')));
                      }
                    },
                  );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class _MetricItem extends StatelessWidget {
  final String title;
  final String value;
  final Color? valueColor;

  const _MetricItem({required this.title, required this.value, this.valueColor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: theme.textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700, color: valueColor),
        ),
      ],
    );
  }
}
