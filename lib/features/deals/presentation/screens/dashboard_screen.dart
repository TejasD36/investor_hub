import '../../../../core.dart';
import '../../domain/entities/deal_filter.dart';
import '../bloc/deals_bloc.dart';
import '../bloc/deals_event.dart';
import '../bloc/deals_state.dart';
import '../widgets/dashboard_drawer.dart';
import '../widgets/dashboard_search_bar.dart';
import '../widgets/deal_card.dart';
import '../widgets/filters_bottom_sheet.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    context.read<DealsBloc>().add(const DealsEvent.fetchDeals());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    if (query.trim().isEmpty) {
      context.read<DealsBloc>().add(const DealsEvent.resetDeals());
    } else {
      context.read<DealsBloc>().add(DealsEvent.searchDeals(query: query));
    }
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (context) {
        return FiltersBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Investor Hub', style: theme.textTheme.titleLarge),

            Text('Explore premium deals', style: theme.textTheme.bodySmall),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(AppRoute.myInterests.name);
            },
            icon: const Icon(Icons.star_border_rounded, size: 25),
          ),
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              final isDark = themeState.themeMode == ThemeMode.dark;

              return IconButton(
                tooltip: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
                onPressed: () {
                  context.read<ThemeCubit>().setTheme(isDark ? ThemeMode.light : ThemeMode.dark);
                },
                icon: Icon(isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
              );
            },
          ),
        ],
      ),
      drawer: const DashboardDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              DashboardSearchBar(controller: _searchController, onChanged: _onSearch, onFilterTap: _showFilterBottomSheet),

              const SizedBox(height: 20),

              Expanded(
                child: BlocBuilder<DealsBloc, DealsState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),
                      loading: () => const Center(child: CircularProgressIndicator()),
                      empty: () => const Center(child: Text('No deals found')),
                      error: (message) => Center(child: Text(message)),
                      loaded: (deals) {
                        return RefreshIndicator(
                          onRefresh: () async {
                            final bloc = context.read<DealsBloc>();

                            final currentFilter = bloc.currentFilter;

                            if (currentFilter == const DealFilter()) {
                              bloc.add(const DealsEvent.fetchDeals());
                            } else {
                              bloc.add(DealsEvent.applyFilter(filter: currentFilter));
                            }
                          },
                          child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: deals.length,
                            itemBuilder: (context, index) {
                              final deal = deals[index];

                              return DealCard(deal: deal);
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
