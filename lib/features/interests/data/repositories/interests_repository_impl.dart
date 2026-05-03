import '../../../deals/data/models/deal_model.dart';
import '../../domain/repositories/interests_repository.dart';
import '../datasources/interests_local_datasource.dart';

class InterestsRepositoryImpl implements InterestsRepository {
  final InterestsLocalDataSource localDataSource;

  InterestsRepositoryImpl(this.localDataSource);

  @override
  Future<List<DealModel>> loadInterests() async {
    try {
      return await localDataSource.loadInterests();
    } catch (e) {
      throw Exception('Failed to load interests: ${e.toString()}');
    }
  }

  @override
  Future<void> addInterest(DealModel deal) async {
    try {
      await localDataSource.addInterest(deal);
    } catch (e) {
      throw Exception('Failed to add interest: ${e.toString()}');
    }
  }

  @override
  Future<void> removeInterest(String dealId) async {
    try {
      await localDataSource.removeInterest(dealId);
    } catch (e) {
      throw Exception('Failed to remove interest: ${e.toString()}');
    }
  }

  @override
  Future<bool> isInterested(String dealId) async {
    try {
      return await localDataSource.isInterested(dealId);
    } catch (e) {
      throw Exception('Failed to check interest: ${e.toString()}');
    }
  }

  @override
  Future<void> clearAllInterests() async {
    try {
      await localDataSource.clearAllInterests();
    } catch (e) {
      throw Exception('Failed to clear interests: ${e.toString()}');
    }
  }
}
