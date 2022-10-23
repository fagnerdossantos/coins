import 'package:flutter/widgets.dart';

// Colors
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color blue = Color.fromARGB(255, 68, 138, 255);
const Color blueGrey = Color.fromARGB(255, 96, 125, 139);
const Color deepPurple = Color.fromARGB(255, 103, 58, 183);
const Color red = Color.fromARGB(255, 255, 0, 0);

// Radius
final BorderRadius radius = BorderRadius.circular(20);
const BorderRadius radiusHome = BorderRadius.only(
  topLeft: Radius.circular(50),
  topRight: Radius.circular(50),
);

// Type
typedef CoinResponse = Map<String, dynamic>;
typedef ApiMap = Map<String, dynamic>;

// TextStyle
const TextStyle defaultStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

const TextStyle priceStyle = TextStyle(
  color: white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const TextStyle textAppBarStyle = TextStyle(
  color: white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

// Device Type
const double mobileWidth = 500;
const double tabletWith = 900;
