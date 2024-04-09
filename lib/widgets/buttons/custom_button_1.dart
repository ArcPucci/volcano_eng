import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    this.onTap,
    required this.text,
  });

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 343.w,
        height: 52.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.emerald.withOpacity(0.4),
        ),
        alignment: Alignment.center,
        child: Container(
          width: 319.w,
          height: 52.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.emerald.withOpacity(0.7),
          ),
          alignment: Alignment.center,
          child: Container(
            width: 295.w,
            height: 52.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppTheme.emerald,
            ),
            alignment: Alignment.center,
            child: Text(text, style: AppTextStyles.textStyle3),
          ),
        ),
      ),
    );
  }
}
