import '../../../../core.dart';

class FinancialHighlightsCard extends StatelessWidget {
  final String highlights;

  const FinancialHighlightsCard({super.key, required this.highlights});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final points = highlights.split(',');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Financial Highlights', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 14),
            ...points.map(
              (point) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle, size: 18),
                    const SizedBox(width: 10),
                    Expanded(child: Text(point.trim(), style: theme.textTheme.bodyMedium)),
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
