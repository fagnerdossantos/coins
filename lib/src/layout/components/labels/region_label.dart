import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class RegionLabel extends StatelessWidget {
  final String label;
  const RegionLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          color: blueGrey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
