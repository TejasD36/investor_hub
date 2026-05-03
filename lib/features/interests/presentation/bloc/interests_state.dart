import '../../../../core.dart';
import '../../../deals/data/models/deal_model.dart';

part 'interests_state.freezed.dart';

@freezed
sealed class InterestsState with _$InterestsState {
  const factory InterestsState.initial() = _Initial;

  const factory InterestsState.loading() = _Loading;

  const factory InterestsState.loaded({required List<DealModel> interests}) = _Loaded;

  const factory InterestsState.empty() = _Empty;

  const factory InterestsState.actionSuccess(String message) = _ActionSuccess;

  const factory InterestsState.error(String message) = _Error;
}
