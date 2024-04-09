import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 343.w,
            height: 180.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppTheme.darkBlue3.withOpacity(0.1),
              border: Border.all(
                width: 1.sp,
                color: Colors.white.withOpacity(0.05),
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/png/example2.png',
                    width: 323.w,
                    height: 91.h,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Types of Volcanoes',
                            style: AppTextStyles.textStyle8,
                          ),
                          Text(
                            '1st lesson',
                            style: AppTextStyles.textStyle2.copyWith(
                              color: AppTheme.ginger,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/png/icons/next.png',
                        width: 34.r,
                        height: 34.r,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
