import '../../../../core.dart';

class InterestButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isInterested;

  const InterestButton({super.key, required this.onPressed, required this.isInterested});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(isInterested ? Icons.star_rounded : Icons.star_border_rounded, size: 25),
        label: Text(isInterested ? 'Interested (Tap to Remove)' : "I'm Interested"),
      ),
    );
  }
}
