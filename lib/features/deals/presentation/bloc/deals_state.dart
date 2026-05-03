import '../../../../core.dart';
import '../../data/models/deal_model.dart';

part 'deals_state.freezed.dart';

@freezed
sealed class DealsState with _$DealsState {
  const factory DealsState.initial() = _Initial;

  const factory DealsState.loading() = _Loading;

  const factory DealsState.loaded({required List<DealModel> deals}) = _Loaded;

  const factory DealsState.empty() = _Empty;

  const factory DealsState.error(String message) = _Error;
}
