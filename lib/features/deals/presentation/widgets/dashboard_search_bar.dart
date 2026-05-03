import '../../../../core.dart';

class DashboardSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback? onFilterTap;

  const DashboardSearchBar({super.key, required this.controller, required this.onChanged, this.onFilterTap});

  @override
  State<DashboardSearchBar> createState() => _DashboardSearchBarState();
}

class _DashboardSearchBarState extends State<DashboardSearchBar> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(_refresh);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: 'Search by company or industry...',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: widget.controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        widget.controller.clear();
                        widget.onChanged('');
                      },
                    )
                  : null,
            ),
          ),
        ),
        const SizedBox(width: 12),
        IconButton.filled(onPressed: widget.onFilterTap, icon: const Icon(Icons.tune_rounded)),
      ],
    );
  }
}
