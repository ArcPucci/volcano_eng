import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            SimpleAppBar(
              title: 'The Answers\n(${value.quiz.level} level)',
              hasBackButton: true,
              onBack: context.pop,
            ),
            SizedBox(height: 35.h),
            Text(
              'Congratulations!',
              style: AppTextStyles.textStyle10.copyWith(
                color: AppTheme.ginger,
              ),
            ),
            SizedBox(height: 22.h),
            BlurredBox(
              padding: EdgeInsets.symmetric(horizontal: 58.w, vertical: 16.h),
              child: Column(
                children: [
                  Text(
                    'Result',
                    style: AppTextStyles.textStyle2.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppTheme.emerald,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Column(
                    children: List.generate(
                      value.answers.length,
                      (index) {
                        final correct = value.answers[index].length == 1;
                        final yourAnswer = value.answers[index].first;
                        final correctAnswer = value.answers[index].last;
                        return Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: Row(
                            children: [
                              NumberBox(index: index, achieved: true),
                              SizedBox(width: 16.w),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      if (!correct) ...[
                                        Text(
                                          yourAnswer,
                                          style:
                                              AppTextStyles.textStyle8.copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 16.w),
                                      ],
                                      Text(
                                        correctAnswer,
                                        style:
                                            AppTextStyles.textStyle8.copyWith(
                                          color: AppTheme.emerald,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
