import '../../../deals/data/models/deal_model.dart';
import '../repositories/interests_repository.dart';

class AddInterestUseCase {
  final InterestsRepository repository;

  AddInterestUseCase(this.repository);

  Future<void> call(DealModel deal) async {
    await repository.addInterest(deal);
  }
}
