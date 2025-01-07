import 'dart:math';

import 'package:coins/src/configurations/utils.dart';
import 'package:flutter/widgets.dart';

class Coordinates {
  double x;
  double y;

  Coordinates(this.x, this.y);
}

class BubbleBackgroundEffect extends StatefulWidget {
  final List<String> currenciesInitials;

  const BubbleBackgroundEffect({super.key, required this.currenciesInitials});

  @override
  State<BubbleBackgroundEffect> createState() => _BubbleBackgroundEffectState();
}

class _BubbleBackgroundEffectState extends State<BubbleBackgroundEffect> {
  //
  late final Random _random;

  // Bubble properties
  final double _bubbleSize = 50;
  final Color _bubbleColor = neutralGray;

  final List<Coordinates> _bubbles = [];

  void _populateBubbles() {
    _bubbles.addAll(
      List.generate(
        widget.currenciesInitials.length,
        (_) => Coordinates(90, 200),
      ),
    );
  }

  bool _isPositionValid(Coordinates newBubble) {
    //
    double minimumDistance = _bubbleSize * .8;

    for (Coordinates bubble in _bubbles) {
      double distance = sqrt(
        pow(newBubble.x - bubble.x, 2) + pow(newBubble.y - bubble.y, 2),
      );

      if (distance < minimumDistance) {
        return false;
      }
    }

    return true;
  }

  void _initializeBubbles() {
    for (Coordinates bubble in _bubbles) {
      //
      Coordinates newBubble;

      do {
        newBubble = Coordinates(
          _random.nextDouble() * (400 - _bubbleSize),
          _random.nextDouble() * (450 - _bubbleSize),
        );
      } while (!_isPositionValid(newBubble));

      bubble.x = newBubble.x;
      bubble.y = newBubble.y;
    }

    setState(() {});
  }

  @override
  void initState() {
    _random = Random();
    _populateBubbles();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeBubbles();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 0; i < _bubbles.length; i++)
          AnimatedPositioned(
            //
            top: _bubbles[i].x,
            left: _bubbles[i].y,

            duration: Duration(seconds: 3),

            child: Container(
              //
              width: _bubbleSize,
              height: _bubbleSize,

              alignment: Alignment.center,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _bubbleColor.withValues(alpha: 0.2),
              ),

              child: Text(
                widget.currenciesInitials[i],
                style: TextStyle(
                  fontSize: 15,
                  color: _bubbleColor.withValues(alpha: 0.6),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
