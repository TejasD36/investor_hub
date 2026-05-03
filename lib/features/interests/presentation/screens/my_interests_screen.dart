import '../../../../core.dart';
import '../../../deals/data/models/deal_model.dart';
import '../../../deals/presentation/widgets/deal_card.dart';
import '../bloc/interests_bloc.dart';
import '../bloc/interests_event.dart';
import '../bloc/interests_state.dart';

class MyInterestsScreen extends StatefulWidget {
  const MyInterestsScreen({super.key});

  @override
  State<MyInterestsScreen> createState() => _MyInterestsScreenState();
}

class _MyInterestsScreenState extends State<MyInterestsScreen> {
  @override
  void initState() {
    super.initState();

    context.read<InterestsBloc>().add(const InterestsEvent.loadInterests());
  }

  void _removeInterest(DealModel deal) {
    context.read<InterestsBloc>().add(InterestsEvent.removeInterest(dealId: deal.id));

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${deal.companyName} removed from interests')));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Interests'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<InterestsBloc>().add(const InterestsEvent.refreshInterests());
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<InterestsBloc, InterestsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(child: CircularProgressIndicator()),

                empty: () => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_border_rounded, size: 72, color: theme.colorScheme.primary),
                      const SizedBox(height: 20),
                      Text('No interested deals yet', style: theme.textTheme.titleLarge),
                      const SizedBox(height: 8),
                      Text(
                        'Start exploring deals and mark opportunities you like.',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.explore),
                        label: const Text('Explore Deals'),
                      ),
                    ],
                  ),
                ),

                error: (message) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 60),
                      const SizedBox(height: 12),
                      Text(message, textAlign: TextAlign.center),
                    ],
                  ),
                ),

                loaded: (interests) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${interests.length} Interested Deals',
                        style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                      ),

                      const SizedBox(height: 18),

                      Expanded(
                        child: ListView.builder(
                          itemCount: interests.length,
                          itemBuilder: (context, index) {
                            final deal = interests[index];

                            return Dismissible(
                              key: Key(deal.id),
                              direction: DismissDirection.endToStart,
                              background: Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(14)),
                                child: const Icon(Icons.delete, color: Colors.white),
                              ),
                              onDismissed: (_) {
                                _removeInterest(deal);
                              },
                              child: DealCard(deal: deal),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },

                actionSuccess: (message) => Center(child: Text(message)),
              );
            },
          ),
        ),
      ),
    );
  }
}
