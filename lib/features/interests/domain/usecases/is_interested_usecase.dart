import '../repositories/interests_repository.dart';

class IsInterestedUseCase {
  final InterestsRepository repository;

  IsInterestedUseCase(this.repository);

  Future<bool> call(String dealId) async {
    return await repository.isInterested(dealId);
  }
}
