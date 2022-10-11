// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:wallet_ui/contents/contents.dart';

//Cards Header
Widget headCardTitle(
  BuildContext context, {
  required String prefixText,
  required String suffixText,
  VoidCallback? onTap,
  IconData? icon = Icons.add,
  double? size = 33,
}) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  prefixText,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  suffixText,
                  style: const TextStyle(
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                  onTap: onTap,
                  child: Icon(
                    icon,
                    size: size,
                  )),
            )
          ],
        ),
      )
    ],
  );
}

//Card
Widget card(
  BuildContext context, {
  final Color? color = Colors.deepPurple,
  required final double balance,
  required final int last4Digites,
  required final int expiryMounth,
  required final int expiryYear,
  required final bool isVisa,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(text: 'Balance'),
              Image.asset(
                isVisa
                    ? 'assets/icons/visa.png'
                    : 'assets/icons/master-card.png',
                height: 45,
              ),
            ],
          ),
          const SizedBox(height: 10),
          customText(
            text: '\$$balance',
            size: 28,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(text: '****$last4Digites'),
              customText(text: '$expiryMounth/$expiryYear'),
            ],
          )
        ],
      ),
    ),
  );
}
