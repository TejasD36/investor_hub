import '../../../../core.dart';
import '../../../deals/data/models/deal_model.dart';

class InterestsLocalDataSource {
  final Box<DealModel> _interestsBox = Hive.box<DealModel>(HiveBoxes.interestsBox);

  Future<List<DealModel>> loadInterests() async {
    try {
      return _interestsBox.values.toList();
    } catch (e) {
      throw Exception('Failed to load interests: ${e.toString()}');
    }
  }

  Future<void> addInterest(DealModel deal) async {
    try {
      final alreadyExists = _interestsBox.containsKey(deal.id);

      if (!alreadyExists) {
        await _interestsBox.put(deal.id, deal);
      }
    } catch (e) {
      throw Exception('Failed to save interest: ${e.toString()}');
    }
  }


  Future<void> removeInterest(String dealId) async {
    try {
      await _interestsBox.delete(dealId);
    } catch (e) {
      throw Exception('Failed to remove interest: ${e.toString()}');
    }
  }

  Future<bool> isInterested(String dealId) async {
    try {
      return _interestsBox.containsKey(dealId);
    } catch (e) {
      throw Exception('Failed to check interest status: ${e.toString()}');
    }
  }

  Future<void> clearAllInterests() async {
    try {
      await _interestsBox.clear();
    } catch (e) {
      throw Exception('Failed to clear interests: ${e.toString()}');
    }
  }
}
