import 'package:flutter/widgets.dart';

class CoinLabel extends StatelessWidget {
  final String label;
  const CoinLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
