import '../../../deals/data/models/deal_model.dart';
import '../repositories/interests_repository.dart';

class LoadInterestsUseCase {
  final InterestsRepository repository;

  LoadInterestsUseCase(this.repository);

  Future<List<DealModel>> call() async {
    return await repository.loadInterests();
  }
}
