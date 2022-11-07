import 'package:flutter/material.dart';

AppBar appBarBuilder({required String title, required Color color}) {
  return AppBar(
    title: Text(
      title,
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: color,
  );
}
