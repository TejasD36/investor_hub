import '../repositories/deals_repository.dart';

class GetIndustriesUseCase {
  final DealsRepository repository;

  GetIndustriesUseCase(this.repository);

  Future<List<String>> call() async {
    return await repository.getIndustries();
  }
}

class GetRiskLevelsUseCase {
  final DealsRepository repository;

  GetRiskLevelsUseCase(this.repository);

  Future<List<String>> call() async {
    return await repository.getRiskLevels();
  }
}

class GetStatusesUseCase {
  final DealsRepository repository;

  GetStatusesUseCase(this.repository);

  Future<List<String>> call() async {
    return await repository.getStatuses();
  }
}
