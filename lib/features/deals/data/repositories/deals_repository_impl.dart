import '../../domain/repositories/deals_repository.dart';
import '../datasources/deals_local_datasource.dart';
import '../models/deal_model.dart';

class DealsRepositoryImpl implements DealsRepository {
  final DealsLocalDataSource localDataSource;

  DealsRepositoryImpl(this.localDataSource);

  @override
  Future<List<DealModel>> fetchDeals() async {
    try {
      return await localDataSource.fetchDeals();
    } catch (e) {
      throw Exception('Failed to fetch deals: ${e.toString()}');
    }
  }

  @override
  Future<List<DealModel>> searchDeals(String query) async {
    try {
      return await localDataSource.searchDeals(query);
    } catch (e) {
      throw Exception('Failed to search deals: ${e.toString()}');
    }
  }

  @override
  Future<List<DealModel>> filterDeals({double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status}) async {
    try {
      return await localDataSource.filterDeals(minRoi: minRoi, maxRoi: maxRoi, riskLevel: riskLevel, industry: industry, status: status);
    } catch (e) {
      throw Exception('Failed to filter deals: ${e.toString()}');
    }
  }

  @override
  Future<DealModel?> getDealById(String id) async {
    try {
      return await localDataSource.getDealById(id);
    } catch (e) {
      throw Exception('Failed to fetch deal details: ${e.toString()}');
    }
  }

  @override
  Future<List<String>> getIndustries() async {
    try {
      return await localDataSource.getIndustries();
    } catch (e) {
      throw Exception('Failed to load industries: ${e.toString()}');
    }
  }

  @override
  Future<List<String>> getRiskLevels() async {
    try {
      return await localDataSource.getRiskLevels();
    } catch (e) {
      throw Exception('Failed to load risk levels: ${e.toString()}');
    }
  }

  @override
  Future<List<String>> getStatuses() async {
    try {
      return await localDataSource.getStatuses();
    } catch (e) {
      throw Exception('Failed to load statuses: ${e.toString()}');
    }
  }
}
