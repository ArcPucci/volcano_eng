import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class BGWidget extends StatelessWidget {
  const BGWidget({
    super.key,
    required this.hasVolcano,
    required this.child,
    this.inverse = false,
  });

  final bool hasVolcano;
  final bool inverse;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.darkBlue,
      child: SafeArea(
        child: Stack(
          children: [
            if (!hasVolcano)
              Positioned(
                top: 223.h,
                left: inverse ? -45.r : null,
                right: inverse ? null : -72.r,
                child: GradientCircle(
                  radius: 211.r,
                  angle: pi / 2,
                ),
              ),
            if (!hasVolcano)
              Positioned(
                left: inverse ? null : -15.r,
                right: inverse ? -42.r : null,
                bottom: inverse ? 9.h : 77.h,
                child: GradientCircle(
                  radius: 132.r,
                  angle: pi / 2,
                ),
              ),
            if (hasVolcano)
              Positioned(
                right: -252.w,
                bottom: -53.h,
                child: Image.asset(
                  'assets/png/volcano.png',
                  width: 505.w,
                  height: 567.h,
                  fit: BoxFit.cover,
                ),
              ),
            Positioned.fill(child: child),
          ],
        ),
      ),
    );
  }
}
