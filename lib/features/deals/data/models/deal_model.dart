import '../../../../core.dart';

part 'deal_model.freezed.dart';
part 'deal_model.g.dart';

@freezed
@HiveType(typeId: 0)
sealed class DealModel with _$DealModel {
  const factory DealModel({
    @HiveField(0) required String id,
    @HiveField(1) required String companyName,
    @HiveField(2) required String industry,
    @HiveField(3) required double investmentRequired,
    @HiveField(4) required double expectedRoi,
    @HiveField(5) required String riskLevel,
    @HiveField(6) required String status,
    @HiveField(7) required String overview,
    @HiveField(8) required String financialHighlights,
    @HiveField(9) required String riskExplanation,
    @HiveField(10) String? logoUrl,
    @HiveField(11) DateTime? createdAt,
  }) = _DealModel;

  factory DealModel.fromJson(Map<String, dynamic> json) => _$DealModelFromJson(json);
}
