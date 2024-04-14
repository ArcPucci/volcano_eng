import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({
    super.key,
    required this.child,
    required this.path,
    this.hasBottomBar = true,
    this.hasVolcano = false,
  });

  final String path;
  final bool hasBottomBar;
  final bool hasVolcano;
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
                right: -72.r,
                child: GradientCircle(
                  radius: 211.r,
                  angle: pi / 2,
                ),
              ),
            if (!hasVolcano)
              Positioned(
                left: -15.r,
                bottom: 77.h,
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
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(child: child),
                  if (hasBottomBar) CustomBottomBar(path: path),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
