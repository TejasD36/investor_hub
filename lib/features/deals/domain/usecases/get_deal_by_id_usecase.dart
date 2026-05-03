import '../../data/models/deal_model.dart';
import '../repositories/deals_repository.dart';

class GetDealByIdUseCase {
  final DealsRepository repository;

  GetDealByIdUseCase(this.repository);

  Future<DealModel?> call(String id) async {
    return await repository.getDealById(id);
  }
}
