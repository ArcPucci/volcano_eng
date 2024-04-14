import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    super.key,
    this.onTap,
    required this.quiz,
  });

  final VoidCallback? onTap;
  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: BlurredBox(
            height: 147.h,
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 10.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/png/icons/gameboy.png',
                          width: 52.r,
                          height: 52.r,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 16.w),
                        Text(
                          quiz.name,
                          style: AppTextStyles.textStyle11,
                        ),
                      ],
                    ),
                    Text(
                      '${quiz.level} volcano level',
                      style: AppTextStyles.textStyle8,
                    ),
                    Text(
                      '${quiz.questions.length} Questions',
                      style: AppTextStyles.textStyle2.copyWith(
                        color: AppTheme.ginger,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                LevelIndicator(level: quiz.complexity),
              ],
            ),
          ),
        ),
        if (2 < 1)
          Positioned(
            bottom: 0,
            child: CustomButton1(text: 'Buy Premium', onTap: onTap),
          ),
      ],
    );
  }
}
