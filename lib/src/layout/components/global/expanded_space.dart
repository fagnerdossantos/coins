import 'package:flutter/widgets.dart';

class ExpandedSpace extends StatelessWidget {
  const ExpandedSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: SizedBox(),
    );
  }
}
