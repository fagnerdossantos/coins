import 'package:flutter/material.dart'
    show BuildContext, Center, Scaffold, StatelessWidget, Widget;

import '../widgets/flag_switcher_random.dart';

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
