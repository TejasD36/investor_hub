import '../../../../core.dart';
import '../../domain/entities/deal_filter.dart';
import '../bloc/deals_bloc.dart';
import '../bloc/deals_event.dart';
import '../models/deal_status.dart';
import '../models/enum_extension.dart';
import '../models/industry.dart';
import '../models/risk_level.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({super.key});

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  late DealFilter _tempFilter;

  @override
  void initState() {
    super.initState();

    final bloc = context.read<DealsBloc>();
    final filter = bloc.currentFilter;
    _tempFilter = filter.copyWith();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final roiRange = RangeValues(_tempFilter.minRoi ?? 0, _tempFilter.maxRoi ?? 40);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Filter Deals', style: theme.textTheme.titleLarge),

            const SizedBox(height: 24),

            // =============================
            // ROI
            // =============================
            Text('Expected ROI Range', style: theme.textTheme.titleMedium),

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('${roiRange.start.toInt()}%'), Text('${roiRange.end.toInt()}%')],
            ),

            RangeSlider(
              values: roiRange,
              min: 0,
              max: 40,
              divisions: 8,
              labels: RangeLabels('${roiRange.start.toInt()}%', '${roiRange.end.toInt()}%'),
              onChanged: (values) {
                setState(() {
                  _tempFilter = _tempFilter.copyWith(minRoi: values.start, maxRoi: values.end);
                });
              },
            ),

            const SizedBox(height: 16),

            DropdownButtonFormField<RiskLevel>(
              initialValue: _tempFilter.risk,
              decoration: const InputDecoration(labelText: 'Risk Level'),
              items: RiskLevel.values.map((e) => DropdownMenuItem(value: e, child: Text(e.label))).toList(),
              onChanged: (value) {
                setState(() {
                  _tempFilter = _tempFilter.copyWith(risk: value);
                });
              },
            ),

            const SizedBox(height: 16),

            DropdownButtonFormField<Industry>(
              initialValue: _tempFilter.industry,
              decoration: const InputDecoration(labelText: 'Industry'),
              items: Industry.values.map((e) => DropdownMenuItem(value: e, child: Text(e.label))).toList(),
              onChanged: (value) {
                setState(() {
                  _tempFilter = _tempFilter.copyWith(industry: value);
                });
              },
            ),

            const SizedBox(height: 16),

            DropdownButtonFormField<DealStatus>(
              initialValue: _tempFilter.status,
              decoration: const InputDecoration(labelText: 'Status'),
              items: DealStatus.values.map((e) => DropdownMenuItem(value: e, child: Text(e.label))).toList(),
              onChanged: (value) {
                setState(() {
                  _tempFilter = _tempFilter.copyWith(status: value);
                });
              },
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<DealsBloc>().add(const DealsEvent.clearFilter());
                      Navigator.pop(context);
                    },
                    child: const Text('Reset'),
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<DealsBloc>().add(DealsEvent.applyFilter(filter: _tempFilter));

                      Navigator.pop(context);
                    },
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
