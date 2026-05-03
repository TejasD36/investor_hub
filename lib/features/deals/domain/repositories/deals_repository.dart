import '../../data/models/deal_model.dart';

abstract class DealsRepository {
  Future<List<DealModel>> fetchDeals();

  Future<List<DealModel>> searchDeals(String query);

  Future<List<DealModel>> filterDeals({double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status});

  Future<DealModel?> getDealById(String id);

  Future<List<String>> getIndustries();

  Future<List<String>> getRiskLevels();

  Future<List<String>> getStatuses();
}
