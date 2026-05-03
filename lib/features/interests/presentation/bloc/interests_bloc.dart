import '../../../../core.dart';
import '../../domain/usecases/add_interest_usecase.dart';
import '../../domain/usecases/load_interests_usecase.dart';
import '../../domain/usecases/remove_interest_usecase.dart';
import 'interests_event.dart';
import 'interests_state.dart';

class InterestsBloc extends Bloc<InterestsEvent, InterestsState> {
  final LoadInterestsUseCase loadInterestsUseCase;
  final AddInterestUseCase addInterestUseCase;
  final RemoveInterestUseCase removeInterestUseCase;

  InterestsBloc({required this.loadInterestsUseCase, required this.addInterestUseCase, required this.removeInterestUseCase})
    : super(const InterestsState.initial()) {
    on<InterestsEvent>((event, emit) async {
      await event.when(
        loadInterests: () async {
          emit(const InterestsState.loading());

          try {
            final interests = await loadInterestsUseCase();

            if (interests.isEmpty) {
              emit(const InterestsState.empty());
            } else {
              emit(InterestsState.loaded(interests: interests));
            }
          } catch (e) {
            emit(InterestsState.error(e.toString()));
          }
        },

        addInterest: (deal) async {
          try {
            await addInterestUseCase(deal);

            final interests = await loadInterestsUseCase();

            emit(InterestsState.loaded(interests: interests));
          } catch (e) {
            emit(InterestsState.error(e.toString()));
          }
        },

        removeInterest: (dealId) async {
          try {
            await removeInterestUseCase(dealId);

            final interests = await loadInterestsUseCase();

            if (interests.isEmpty) {
              emit(const InterestsState.empty());
            } else {
              emit(InterestsState.loaded(interests: interests));
            }
          } catch (e) {
            emit(InterestsState.error(e.toString()));
          }
        },
        refreshInterests: () async {
          add(const InterestsEvent.loadInterests());
        },
      );
    });
  }
}
