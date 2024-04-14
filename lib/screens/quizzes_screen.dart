import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/repositories/quizzes.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class QuizzesScreen extends StatelessWidget {
  const QuizzesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            const SimpleAppBar(title: 'Quizzes'),
            SizedBox(height: 22.h),
            const ChooseTextWidget(
              text: 'level',
              action: "Select",
              purpose: "play",
            ),
            Expanded(
              child: ListView.builder(
                itemCount: quizzes.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                itemBuilder: (context, index) {
                  final quiz = quizzes[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: QuizCard(
                      quiz: quiz,
                      onTap: () => value.onSelectQuiz(quiz),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
