import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key, this.onTap});

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
            height: 257.h,
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
                    'assets/png/example.png',
                    width: 323.w,
                    height: 144.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elementary\nvolcano level',
                            style: AppTextStyles.textStyle8,
                          ),
                          Text(
                            '3 lessons',
                            style: AppTextStyles.textStyle8.copyWith(
                              color: AppTheme.ginger,
                            ),
                          ),
                        ],
                      ),
                      const LevelIndicator(level: 0),
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
