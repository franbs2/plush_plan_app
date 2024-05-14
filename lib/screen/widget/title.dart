import 'package:flutter/material.dart';

class WidgetTitle extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  const WidgetTitle(
      {super.key,
      required this.title,
      this.color = Colors.white,
      this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: size,
            )));
  }
}
