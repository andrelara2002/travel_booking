import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final Color color;
  final String text;
  double size;

  AppText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
