import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            SimpleAppBar(
              title: '${value.quiz.level} level\n(${value.quiz.name})',
              hasBackButton: true,
              onBack: context.pop,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Column(
                  children: [
                    StageIndicator(
                      total: value.quiz.questions.length,
                      currentIndex: value.currentPage,
                    ),
                    SizedBox(height: 16.h),
                    QuestionBox(question: value.question),
                    SizedBox(height: 24.h),
                    const QuizInput(),
                    if(value.question is Completion)
                    SizedBox(height: 500.h),
                  ],
                ),
              ),
            ),
            CustomButton2(text: 'Next', onTap: value.onNext),
            SizedBox(height: 16.h),
          ],
        );
      },
    );
  }
}
