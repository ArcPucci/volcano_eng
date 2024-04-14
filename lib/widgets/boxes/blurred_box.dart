import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class BlurredBox extends StatelessWidget {
  const BlurredBox({
    super.key,
    this.height,
    required this.child,
    this.padding,
  });

  final Widget child;
  final double? height;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: Container(
          width: 343.w,
          height: height,
          decoration: BoxDecoration(
            color: AppTheme.darkBlue3.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1.sp,
              color: Colors.white.withOpacity(0.05),
            ),
          ),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
