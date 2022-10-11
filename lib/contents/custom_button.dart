import 'package:flutter/material.dart';

Widget customButton({
  required final String assetName,
  required final String buttonText,
  final VoidCallback? onTap,
}) {
  return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 40,
                spreadRadius: 10,
              )
            ],
          ),
          child: Center(
            child: Image.asset('assets/icons/$assetName'),
          ),
        ),
      ),
      const SizedBox(height: 10),
      Text(
        buttonText,
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey[700],
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
}

//Custom bottom navbar button
Widget bottomNavBarButton({
  required final IconData icon,
  final Color? color = Colors.grey,
  final double? size,
  final VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Icon(
      icon,
      size: size,
      color: color,
    ),
  );
}
