import 'package:coins/src/effects/carousel_card.dart';
import 'package:coins/src/effects/corousel_item_model.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CarouselWidget extends StatefulWidget {
  final List<CarouselItemModel> items;

  const CarouselWidget({super.key, required this.items});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget>
    with SingleTickerProviderStateMixin {
  // Declare an AnimationController for animating the carousel
  late AnimationController _controller;

  // Declare variables to keep track of carousel angle and previous drag position
  double _angle = 0;
  double _previousDragX = 0;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
  }

  @override
  void dispose() {
    // Dispose of the AnimationController
    _controller.dispose();
    super.dispose();
  }

  // Callback function to handle drag updates
  void _handleDragUpdate(DragUpdateDetails details) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate the delta between the current and previous drag positions
    final dragX = details.globalPosition.dx;
    final delta = dragX - _previousDragX;

    // Check if the drag has moved enough before updating _previousDragX
    if (delta.abs() > 1) {
      // Calculate the percentage of the screen width covered by the drag delta
      final deltaPercentage = -delta / screenWidth;
      // Calculate the new angle of the carousel based on the drag delta
      final newAngle = _angle + (360 * deltaPercentage);

      setState(() {
        // Update the angle of the carousel
        _angle = newAngle;
      });

      // Store the current drag position for the next update
      _previousDragX = dragX;
    }
  }

  // Callback function to handle drag end
  void _handleDragEnd(DragEndDetails details) {
    _previousDragX = 0;

    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate the velocity of the drag in pixels per second
    final velocity = details.velocity.pixelsPerSecond.dx / screenWidth;

    // Calculate the index of the current item on the carousel
    final newIndex = (_angle / (360 / widget.items.length)).round();

    // Define a threshold for the drag speed
    const dragThreshold = 100;

    if (velocity.abs() > dragThreshold) {
      // Calculate the new angle of the carousel based on the drag velocity and item index
      _angle = newIndex * (360 / widget.items.length) - velocity * 50;

      setState(() {
        // Update the angle of the carousel
        _angle = _angle % 360;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const radius = 80.0;

    return SizedBox(
      // Size
      height: 350,

      child: Stack(
        children: [
          // Display each item in the carousel as a card
          ...widget.items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;

            // Calculate the angle and position of the current item based on the carousel angle and index
            final angle = _angle + (index * (360 / widget.items.length));
            final x = radius * (1.5 * cos(angle * pi / 180));
            final y = radius * (1.5 * sin(angle * pi / 180));

            // Returns a Positioned widget with the specified position and a child widget.
            return CarouselCard(
              angle: angle,
              x: x,
              y: y,
              onDragUpdate: _handleDragUpdate,
              onDragEnd: _handleDragEnd,
              title: item.title,
              screenWidth: screenWidth,
            );
          }).toList(),

          // Display the item in the center of the carousel
          const Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Image(
              image: AssetImage("assets/images/bg.png"),
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
