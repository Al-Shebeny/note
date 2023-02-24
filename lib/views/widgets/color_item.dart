import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSlected, required this.color});
  final bool isSlected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSlected
        ? CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 17,
              backgroundColor: color,
              child: const Icon(
                Icons.check,
                size: 30,
                color: Colors.white,
                weight: 10,
              ),
            ),
          )
        : CircleAvatar(
            radius: 20,
            backgroundColor: color,
          );
  }
}
