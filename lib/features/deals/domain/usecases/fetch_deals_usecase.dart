import '../../data/models/deal_model.dart';
import '../repositories/deals_repository.dart';

class FetchDealsUseCase {
  final DealsRepository repository;

  FetchDealsUseCase(this.repository);

  Future<List<DealModel>> call() async {
    return await repository.fetchDeals();
  }
}
