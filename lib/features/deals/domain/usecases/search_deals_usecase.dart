import '../../data/models/deal_model.dart';
import '../repositories/deals_repository.dart';

class SearchDealsUseCase {
  final DealsRepository repository;

  SearchDealsUseCase(this.repository);

  Future<List<DealModel>> call(String query) async {
    return await repository.searchDeals(query);
  }
}
