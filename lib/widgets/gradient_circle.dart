import 'package:flutter/material.dart';
import 'package:volcano_eng/utils/utils.dart';

class GradientCircle extends StatelessWidget {
  const GradientCircle({
    super.key,
    required this.radius,
    this.angle = 0,
  });

  final double radius;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: radius,
        height: radius,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppTheme.gradient1,
        ),
      ),
    );
  }
}
