import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    super.key,
    required this.text,
    this.width,
    this.onTap,
    this.selected = false,
    this.height,
    this.verticalPadding,
    this.alignment,
  });

  final String text;
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  final bool selected;
  final double? verticalPadding;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: width ?? 326.w,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: selected
                  ? AppTheme.emerald
                  : AppTheme.darkBlue.withOpacity(0.1),
              border: Border.all(
                width: 1.sp,
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: verticalPadding ?? 0,
            ),
            alignment: alignment ?? Alignment.centerLeft,
            child: Text(
              text,
              style: AppTextStyles.textStyle2.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 15.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
