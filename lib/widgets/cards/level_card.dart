import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key,
    this.onTap,
    required this.level,
    this.open = false,
  });

  final Level level;
  final VoidCallback? onTap;
  final bool open;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlurredBox(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        child: Column(
          children: [
            Opacity(
              opacity: open ? 1 : 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  level.asset,
                  width: 323.w,
                  height: 144.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 160.sp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: open ? 1 : 0.5,
                        child: Text(
                          level.name,
                          style: AppTextStyles.textStyle8,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      open
                          ? Text(
                              '${level.lessons.length} lessons',
                              style: AppTextStyles.textStyle2.copyWith(
                                color: AppTheme.ginger,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          : level.premium
                              ? Text(
                                  'To unlock this level, buy Premium!',
                                  style: AppTextStyles.textStyle2.copyWith(
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                              : Text(
                                  'Go to level 1 first.',
                                  style: AppTextStyles.textStyle2.copyWith(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: open ? 1 : 0.5,
                  child: LevelIndicator(level: level.complexity),
                ),
              ],
            ),
            if (level.premium && !open) ...[
              SizedBox(height: 16.h),
              const CustomButton1(text: 'Buy Premium'),
            ],
          ],
        ),
      ),
    );
  }
}
