import '../../core.dart';
import '../../features/auth/data/models/session_model.dart';
import '../../features/auth/data/models/user_model.dart';
import '../../features/deals/data/models/deal_model.dart';

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();

    // Register adapters
    Hive.registerAdapter(DealModelAdapter());
    Hive.registerAdapter(UserModelAdapter());
    Hive.registerAdapter(SessionModelAdapter());

    // Open boxes
    await Future.wait([
      Hive.openBox<DealModel>(HiveBoxes.dealsBox),
      Hive.openBox<DealModel>(HiveBoxes.interestsBox),
      Hive.openBox<SessionModel>(HiveBoxes.sessionBox),
      Hive.openBox(HiveBoxes.settingsBox),
    ]);
  }

  static Future<void> clearAll() async {
    await Hive.box<DealModel>(HiveBoxes.dealsBox).clear();
    await Hive.box<DealModel>(HiveBoxes.interestsBox).clear();
    await Hive.box<SessionModel>(HiveBoxes.sessionBox).clear();
  }
}
