import 'dart:async' show Timer;
import 'dart:math' show Random;

import 'package:flutter/material.dart'
    show
        AnimatedSwitcher,
        AssetImage,
        BuildContext,
        CircleAvatar,
        FadeTransition,
        State,
        StatefulWidget,
        ValueKey,
        Widget,
        Wrap;

class FlagSwitcherAnimation extends StatefulWidget {
  const FlagSwitcherAnimation({super.key});

  @override
  State<FlagSwitcherAnimation> createState() => _FlagSwitcherAnimationState();
}

class _FlagSwitcherAnimationState extends State<FlagSwitcherAnimation> {
  late List<String> _displayedFlags;
  late List<Timer> _timers;

  final Random _random = Random();

  final Duration _duration = Duration(milliseconds: 500);

  @override
  void initState() {
    //
    _initializeFlags();
    _startRandomTimers();

    super.initState();
  }

  void _initializeFlags() {
    // Shuffle and ini flags
    _flags.shuffle();
    _displayedFlags = _flags.take(5).toList();
    _timers = [];
  }

  void _startRandomTimers() {
    for (int i = 0; i < _displayedFlags.length; i++) {
      _setRandomTimer(i);
    }
  }

  void _setRandomTimer(int index) {
    _timers.add(
      Timer.periodic(_duration, (timer) {
        // Switch current flag by a random one

        _displayedFlags[index] = _flags[_random.nextInt(_flags.length)];

        setState(() {});

        // Reset timer
        timer.cancel();

        _setRandomTimer(index);
      }),
    );
  }

  @override
  void dispose() {
    // Cancel all timers
    for (Timer timer in _timers) {
      timer.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: _displayedFlags
          .map((image) => AnimatedSwitcher(
                //
                duration: _duration,

                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },

                child: CircleAvatar(
                  key: ValueKey(image),
                  backgroundImage: AssetImage(image),
                  radius: 25,
                ),
              ))
          .toList(),
    );
  }
}

final List<String> _flags = [
  "assets/images/argentine.png",
  "assets/images/brazil.png",
  "assets/images/united-states.png",
  "assets/images/eu.png",
  "assets/images/uk.png",
  "assets/images/japan.png",
  "assets/images/china.png",
  "assets/images/india.png",
  "assets/images/russia.png",
  "assets/images/south-africa.png",
  "assets/images/australia.png",
  "assets/images/canada.png",
];
