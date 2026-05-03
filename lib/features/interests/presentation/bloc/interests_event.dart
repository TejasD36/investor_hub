import '../../../../core.dart';
import '../../../deals/data/models/deal_model.dart';

part 'interests_event.freezed.dart';

@freezed
sealed class InterestsEvent with _$InterestsEvent {
  const factory InterestsEvent.loadInterests() = _LoadInterests;

  const factory InterestsEvent.addInterest({required DealModel deal}) = _AddInterest;

  const factory InterestsEvent.removeInterest({required String dealId}) = _RemoveInterest;

  const factory InterestsEvent.refreshInterests() = _RefreshInterests;
}
