import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/models/deal_status.dart';
import '../../presentation/models/industry.dart';
import '../../presentation/models/risk_level.dart';

part 'deal_filter.freezed.dart';

@freezed
sealed class DealFilter with _$DealFilter {
  const factory DealFilter({double? minRoi, double? maxRoi, RiskLevel? risk, Industry? industry, DealStatus? status}) = _DealFilter;
}
