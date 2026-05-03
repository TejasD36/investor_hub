import '../../../deals/data/models/deal_model.dart';

abstract class InterestsRepository {
  Future<List<DealModel>> loadInterests();

  Future<void> addInterest(DealModel deal);

  Future<void> removeInterest(String dealId);

  Future<bool> isInterested(String dealId);

  Future<void> clearAllInterests();
}
