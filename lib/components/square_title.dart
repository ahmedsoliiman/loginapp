import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  final String ImagePath;
  const SquareTitle({super.key, required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade700),
      borderRadius: BorderRadius.circular(16),
      color: Colors.black,
      ),
      child: Image.asset(
        ImagePath,
        height: 40,
      ),
    );
  }
}
