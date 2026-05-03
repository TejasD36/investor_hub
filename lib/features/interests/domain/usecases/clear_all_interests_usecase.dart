import '../repositories/interests_repository.dart';

class ClearAllInterestsUseCase {
  final InterestsRepository repository;

  ClearAllInterestsUseCase(this.repository);

  Future<void> call() async {
    await repository.clearAllInterests();
  }
}
