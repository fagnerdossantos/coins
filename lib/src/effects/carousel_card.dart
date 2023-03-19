import 'dart:math';

import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final double angle, x, y, screenWidth;
  final void Function(DragUpdateDetails) onDragUpdate;
  final void Function(DragEndDetails) onDragEnd;

  final String title;

  const CarouselCard(
      {super.key,
      required this.angle,
      required this.x,
      required this.y,
      required this.onDragUpdate,
      required this.onDragEnd,
      required this.title,
      required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // Sets the top margin of the widget to 100 minus the y value.
      top: 100 - y,
      // Sets the left margin of the widget to half the screen width minus the x value minus 50.
      left: screenWidth / 2 - x - 50,
      // Wraps the child widget with a GestureDetector widget that detects horizontal drag updates and drag ends.

      child: GestureDetector(
        // Drag and End
        onHorizontalDragUpdate: onDragUpdate,
        onHorizontalDragEnd: onDragEnd,

        onTap: () => title, // ! Add function

        // Wraps the child widget with a Transform widget that applies a '3D' transformation.
        child: Transform(
          // Sets the transformation matrix to the identity matrix.
          transform: Matrix4.identity()
            // Sets the z value of the translation to a small value to prevent clipping issues.
            ..setEntry(3, 2, 0.001)
            // Rotates the widget around the Y axis by the specified angle plus 90 degrees.
            ..rotateY((angle + 90) * pi / 180)
            // Translates the widget horizontally by 50 pixels.
            ..translate(-50.0),

          // Card appearance.
          child: Card(
            // Elevation
            elevation: 5,

            color: Colors.black.withOpacity(0.9),

            // Shape
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),

            child: SizedBox(
              height: 100,
              width: 190,

              // Card content
              child: Column(
                // Alignment
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
