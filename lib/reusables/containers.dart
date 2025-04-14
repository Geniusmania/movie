import 'package:flutter/material.dart';

class CustomContainers extends StatelessWidget {
  const CustomContainers({
    super.key,
    this.height = 20,
    this.width = 20,
    this.radius = 20,
    this.color = Colors.white,
  });

  final double height, width, radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
    );
  }
}
