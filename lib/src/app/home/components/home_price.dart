import 'package:coins/src/app/home/components/home_price_content.dart';
import 'package:flutter/material.dart';

class HomepriceBox extends StatelessWidget {
  final Size size;
  const HomepriceBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    final double height = size.height;
    final double width = size.width;

    return Card(
      // Shape
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      elevation: 5,

      color: Colors.black.withOpacity(0.9),

      child: Container(
        // Size
        height: height * 0.25,
        width: width,

        padding: const EdgeInsets.all(10),

        child: const HomePriceContent(),
      ),
    );
  }
}
