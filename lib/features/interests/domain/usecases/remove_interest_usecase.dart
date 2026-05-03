import '../repositories/interests_repository.dart';

class RemoveInterestUseCase {
  final InterestsRepository repository;

  RemoveInterestUseCase(this.repository);

  Future<void> call(String dealId) async {
    await repository.removeInterest(dealId);
  }
}
