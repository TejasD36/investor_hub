import '../../data/models/deal_model.dart';
import '../repositories/deals_repository.dart';

class FilterDealsUseCase {
  final DealsRepository repository;

  FilterDealsUseCase(this.repository);

  Future<List<DealModel>> call({double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status}) async {
    return await repository.filterDeals(minRoi: minRoi, maxRoi: maxRoi, riskLevel: riskLevel, industry: industry, status: status);
  }
}
