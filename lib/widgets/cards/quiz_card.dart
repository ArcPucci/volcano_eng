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
    this.available = false,
    this.premium = false,
  });

  final VoidCallback? onTap;
  final Quiz quiz;
  final bool available;
  final bool premium;

  @override
  Widget build(BuildContext context) {
    double opacity = !available || (quiz.premium && !premium) ? 0.5 : 1;
    return GestureDetector(
      onTap: onTap,
      child: BlurredBox(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            SizedBox(
              width: 323.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: opacity,
                        child: Row(
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
                      ),
                      SizedBox(height: 16.h),
                      Opacity(
                        opacity: opacity,
                        child: Text(
                          '${quiz.level} volcano level',
                          style: AppTextStyles.textStyle8,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      if (!premium && quiz.premium)
                        Text(
                          'To unlock this level, buy Premium!',
                          style: AppTextStyles.textStyle2.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      if (!available)
                        Text(
                          'Go to level 1 first.',
                          style: AppTextStyles.textStyle2.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      if (available && !quiz.premium || (premium))
                        Text(
                          '${quiz.questions.length} Questions',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                    ],
                  ),
                  Opacity(
                    opacity: opacity,
                    child: LevelIndicator(level: quiz.complexity),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Visibility(
              visible: !premium && quiz.premium,
              child: Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: CustomButton1(text: 'Buy Premium', onTap: onTap),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
