import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    this.onTap,
    required this.lesson,
    required this.index,
    this.completed = false,
  });

  final VoidCallback? onTap;
  final Lesson lesson;
  final int index;
  final bool completed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlurredBox(
        height: 180.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                completed
                    ? "assets/png/icons/list.png"
                    : 'assets/png/icons/next.png',
                width: 34.r,
                height: 34.r,
                fit: BoxFit.contain,
              ),
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      lesson.image,
                      width: 323.w,
                      height: 91.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lesson.name,
                          style: AppTextStyles.textStyle8,
                        ),
                        Text(
                          '${numerators[index]} lesson',
                          style: AppTextStyles.textStyle2.copyWith(
                            color:
                                completed ? AppTheme.emerald : AppTheme.ginger,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
