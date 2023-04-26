import 'package:flutter/material.dart';

class StatBox extends StatelessWidget {
  final String title;
  final double? value;
  final Color backgroundColor;

  const StatBox(
      {super.key,
      required this.title,
      required this.value,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Expanded(
              child: Text(
                value?.toStringAsFixed(2) ?? "...",
                style: const TextStyle(fontSize: 40, color: Colors.white),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      ),
    );
  }
}
