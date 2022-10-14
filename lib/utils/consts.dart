import 'package:flutter/widgets.dart';

// Colors
const Color black = Color.fromARGB(255, 0, 0, 0);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color blue = Color.fromARGB(255, 68, 138, 255);
const Color blueGrey = Color.fromARGB(255, 96, 125, 139);

// Radius
final BorderRadius radius = BorderRadius.circular(20);

// Type
typedef CoinResponse = Map<String, dynamic>;
typedef ApiMap = Map<String, dynamic>;

// TestStile
TextStyle priceStyle = const TextStyle(
  color: white,
  fontWeight: FontWeight.bold,
);

// Device Type
const double mobileWidth = 500;
const double tabletWith = 900;
