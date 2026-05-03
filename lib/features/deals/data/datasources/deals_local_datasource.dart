import '../../../../core.dart';
import '../models/deal_model.dart';

class DealsLocalDataSource {
  static const String _dealsPath = 'assets/mock/deals.json';

  Future<List<DealModel>> fetchDeals() async {
    await Future.delayed(const Duration(seconds: 2));

    try {
      final jsonString = await rootBundle.loadString(_dealsPath);

      final List<dynamic> decoded = json.decode(jsonString);

      return decoded.map((deal) => DealModel.fromJson(deal as Map<String, dynamic>)).toList();
    } catch (e) {
      throw Exception('Failed to load deals: ${e.toString()}');
    }
  }

  Future<List<DealModel>> searchDeals(String query) async {
    final deals = await fetchDeals();

    if (query.trim().isEmpty) {
      return deals;
    }

    final lowerQuery = query.toLowerCase();

    return deals.where((deal) {
      return deal.companyName.toLowerCase().contains(lowerQuery) || deal.industry.toLowerCase().contains(lowerQuery);
    }).toList();
  }

  Future<List<DealModel>> filterDeals({double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status}) async {
    final deals = await fetchDeals();

    return deals.where((deal) {
      final matchesMinRoi = minRoi == null || deal.expectedRoi >= minRoi;

      final matchesMaxRoi = maxRoi == null || deal.expectedRoi <= maxRoi;

      final matchesRisk = riskLevel == null || riskLevel.isEmpty || deal.riskLevel.toLowerCase() == riskLevel.toLowerCase();

      final matchesIndustry = industry == null || industry.isEmpty || deal.industry.toLowerCase() == industry.toLowerCase();

      final matchesStatus = status == null || status.isEmpty || deal.status.toLowerCase() == status.toLowerCase();

      return matchesMinRoi && matchesMaxRoi && matchesRisk && matchesIndustry && matchesStatus;
    }).toList();
  }

  Future<DealModel?> getDealById(String id) async {
    final deals = await fetchDeals();

    try {
      return deals.firstWhere((deal) => deal.id == id);
    } catch (_) {
      return null;
    }
  }

  Future<List<String>> getIndustries() async {
    final deals = await fetchDeals();

    final industries = deals.map((deal) => deal.industry).toSet().toList();

    industries.sort();

    return industries;
  }

  Future<List<String>> getRiskLevels() async {
    return ['Low', 'Medium', 'High'];
  }

  Future<List<String>> getStatuses() async {
    return ['Open', 'Closed'];
  }
}
