import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class LevelIndicator extends StatelessWidget {
  const LevelIndicator({super.key, required this.level});

  final int level;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51.w,
      height: 54.h,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          3,
          (index) {
            final achieved = (index + 1) <= level;
            return Container(
              width: 13.w,
              height: (index + 2) * 12.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: achieved ? AppTheme.ginger : null,
                border: Border.all(
                  width: 1.sp,
                  color: AppTheme.ginger,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
