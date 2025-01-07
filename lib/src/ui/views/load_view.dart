import 'package:coins/src/ui/widgets/flag_switcher_random.dart';
import 'package:flutter/material.dart';

class LoadView extends StatelessWidget {
  const LoadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlagSwitcherAnimation(),
      ),
    );
  }
}
