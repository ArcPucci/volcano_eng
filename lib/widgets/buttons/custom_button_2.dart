import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 343.w,
            height: 52.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppTheme.emerald.withOpacity(0.4),
            ),
            padding: EdgeInsets.only(left: 12.w),
            child: Container(
              height: 52.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppTheme.emerald.withOpacity(0.7),
              ),
              padding: EdgeInsets.only(left: 12.w),
              child: Container(
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.emerald,
                ),
              ),
            ),
          ),
          Text(text, style: AppTextStyles.textStyle3),
        ],
      ),
    );
  }
}
