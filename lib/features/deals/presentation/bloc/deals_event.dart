import '../../../../core.dart';
import '../../domain/entities/deal_filter.dart';

part 'deals_event.freezed.dart';

@freezed
sealed class DealsEvent with _$DealsEvent {
  const factory DealsEvent.fetchDeals() = _FetchDeals;

  const factory DealsEvent.searchDeals({required String query}) = _SearchDeals;

  const factory DealsEvent.filterDeals({double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status}) =
      _FilterDeals;

  const factory DealsEvent.resetDeals() = _ResetDeals;

  const factory DealsEvent.applyFilter({required DealFilter filter}) = _ApplyFilter;

  const factory DealsEvent.clearFilter() = _ClearFilter;
}
