import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LessonsProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            SimpleAppBar(
              title: '${value.numerator} Lesson Answers\n(${value.complexity})',
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 35.h),
                child: Column(
                  children: [
                    Text('Good job!', style: AppTextStyles.textStyle10),
                    SizedBox(height: 22.h),
                    BlurredBox(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: Column(
                        children: [
                          Text(
                            "Correct answer:",
                            style: AppTextStyles.textStyle2.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppTheme.emerald,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            width: 311.w,
                            child: Text(
                              value.lesson.answers,
                              style: AppTextStyles.textStyle8,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Text(
                            "Your answer:",
                            style: AppTextStyles.textStyle2.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppTheme.ginger,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            width: 311.w,
                            child: Text(
                              value.answers,
                              style: AppTextStyles.textStyle8,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
