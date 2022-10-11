import 'package:flutter/material.dart';

Widget customText({
  required final String text,
  final Color color = Colors.white,
  final double size = 18,
  final FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    ),
  );
}
