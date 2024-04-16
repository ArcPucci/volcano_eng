import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class StageIndicator extends StatelessWidget {
  const StageIndicator({
    super.key,
    required this.currentIndex,
    required this.total,
  });

  final int currentIndex;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) {
          final achieved = currentIndex >= index;
          return Row(
            children: [
              if (index != 0)
                Container(
                  width: 10.w,
                  alignment: Alignment.center,
                  child: Container(
                    width: 6.w,
                    height: 1.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.white,
                    ),
                  ),
                ),
              NumberBox(index: index, achieved: achieved),
            ],
          );
        },
      ),
    );
  }
}
