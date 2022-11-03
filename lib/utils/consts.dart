import 'package:flutter/widgets.dart';

// Colors
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color deepPurple = Color.fromARGB(255, 103, 58, 183);
const Color blueGrey = Color.fromARGB(255, 96, 125, 139);
const Color red = Color.fromARGB(255, 255, 0, 0);

// TestStile
TextStyle labelStyleText(Color color) => TextStyle(
      color: color,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );

typedef APIResponse = Map<String, dynamic>;
