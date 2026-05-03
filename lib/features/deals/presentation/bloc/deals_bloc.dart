import '../../../../core.dart';
import '../../domain/usecases/fetch_deals_usecase.dart';
import '../../domain/usecases/filter_deals_usecase.dart';
import '../../domain/usecases/search_deals_usecase.dart';
import 'deals_event.dart';
import 'deals_state.dart';

class DealsBloc extends Bloc<DealsEvent, DealsState> {
  final FetchDealsUseCase fetchDealsUseCase;
  final SearchDealsUseCase searchDealsUseCase;
  final FilterDealsUseCase filterDealsUseCase;

  DealsBloc({required this.fetchDealsUseCase, required this.searchDealsUseCase, required this.filterDealsUseCase})
    : super(const DealsState.initial()) {
    on<DealsEvent>((event, emit) async {
      await event.when(
        fetchDeals: () async {
          emit(const DealsState.loading());

          try {
            final deals = await fetchDealsUseCase();

            if (deals.isEmpty) {
              emit(const DealsState.empty());
            } else {
              emit(DealsState.loaded(deals: deals));
            }
          } catch (e) {
            emit(DealsState.error(e.toString()));
          }
        },

        searchDeals: (String query) async {
          emit(const DealsState.loading());

          try {
            final deals = await searchDealsUseCase(query);

            if (deals.isEmpty) {
              emit(const DealsState.empty());
            } else {
              emit(DealsState.loaded(deals: deals));
            }
          } catch (e) {
            emit(DealsState.error(e.toString()));
          }
        },
        filterDeals: (double? minRoi, double? maxRoi, String? riskLevel, String? industry, String? status) async {
          emit(const DealsState.loading());

          try {
            final deals = await filterDealsUseCase(
              minRoi: minRoi,
              maxRoi: maxRoi,
              riskLevel: riskLevel,
              industry: industry,
              status: status,
            );

            if (deals.isEmpty) {
              emit(const DealsState.empty());
            } else {
              emit(DealsState.loaded(deals: deals));
            }
          } catch (e) {
            emit(DealsState.error(e.toString()));
          }
        },
        resetDeals: () async {
          emit(const DealsState.loading());

          try {
            final deals = await fetchDealsUseCase();

            if (deals.isEmpty) {
              emit(const DealsState.empty());
            } else {
              emit(DealsState.loaded(deals: deals));
            }
          } catch (e) {
            emit(DealsState.error(e.toString()));
          }
        },
      );
    });
  }
}
