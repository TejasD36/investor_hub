import '../../../../core.dart';
import '../bloc/deals_bloc.dart';
import '../bloc/deals_event.dart';
import '../bloc/deals_state.dart';
import '../widgets/dashboard_drawer.dart';
import '../widgets/dashboard_search_bar.dart';
import '../widgets/deal_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _searchController = TextEditingController();
  String? _selectedRisk;
  String? _selectedIndustry;
  String? _selectedStatus;
  RangeValues _roiRange = const RangeValues(0, 40);

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
    String? tempRisk = _selectedRisk;
    String? tempIndustry = _selectedIndustry;
    String? tempStatus = _selectedStatus;
    RangeValues tempRoiRange = _roiRange;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Filter Deals', style: Theme.of(context).textTheme.titleLarge),

                    const SizedBox(height: 24),

                    Text('Expected ROI Range', style: Theme.of(context).textTheme.titleMedium),

                    const SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('${tempRoiRange.start.toInt()}%'), Text('${tempRoiRange.end.toInt()}%')],
                    ),

                    RangeSlider(
                      values: tempRoiRange,
                      min: 0,
                      max: 40,
                      divisions: 8,
                      labels: RangeLabels('${tempRoiRange.start.toInt()}%', '${tempRoiRange.end.toInt()}%'),
                      onChanged: (values) {
                        setModalState(() {
                          tempRoiRange = values;
                        });
                      },
                    ),

                    const SizedBox(height: 16),

                    DropdownButtonFormField<String>(
                      initialValue: tempRisk,
                      decoration: const InputDecoration(labelText: 'Risk Level'),
                      items: ['Low', 'Medium', 'High'].map((risk) => DropdownMenuItem(value: risk, child: Text(risk))).toList(),
                      onChanged: (value) {
                        setModalState(() {
                          tempRisk = value;
                        });
                      },
                    ),

                    const SizedBox(height: 16),

                    DropdownButtonFormField<String>(
                      initialValue: tempIndustry,
                      decoration: const InputDecoration(labelText: 'Industry'),
                      items: [
                        'FinTech',
                        'HealthTech',
                        'Real Estate',
                        'Renewable Energy',
                        'Artificial Intelligence',
                        'Agriculture',
                        'EdTech',
                        'Supply Chain',
                      ].map((industry) => DropdownMenuItem(value: industry, child: Text(industry))).toList(),
                      onChanged: (value) {
                        setModalState(() {
                          tempIndustry = value;
                        });
                      },
                    ),

                    const SizedBox(height: 16),

                    DropdownButtonFormField<String>(
                      initialValue: tempStatus,
                      decoration: const InputDecoration(labelText: 'Status'),
                      items: ['Open', 'Closed'].map((status) => DropdownMenuItem(value: status, child: Text(status))).toList(),
                      onChanged: (value) {
                        setModalState(() {
                          tempStatus = value;
                        });
                      },
                    ),

                    const SizedBox(height: 30),

                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _selectedRisk = null;
                                _selectedIndustry = null;
                                _selectedStatus = null;
                                _roiRange = const RangeValues(0, 40);
                              });

                              Navigator.pop(context);

                              this.context.read<DealsBloc>().add(const DealsEvent.resetDeals());
                            },
                            child: const Text('Reset'),
                          ),
                        ),

                        const SizedBox(width: 14),

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedRisk = tempRisk;
                                _selectedIndustry = tempIndustry;
                                _selectedStatus = tempStatus;
                                _roiRange = tempRoiRange;
                              });

                              Navigator.pop(context);

                              this.context.read<DealsBloc>().add(
                                DealsEvent.filterDeals(
                                  minRoi: _roiRange.start,
                                  maxRoi: _roiRange.end,
                                  riskLevel: _selectedRisk,
                                  industry: _selectedIndustry,
                                  status: _selectedStatus,
                                ),
                              );
                            },
                            child: const Text('Apply'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
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
                        return ListView.builder(
                          itemCount: deals.length,
                          itemBuilder: (context, index) {
                            final deal = deals[index];

                            return DealCard(deal: deal);
                          },
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
