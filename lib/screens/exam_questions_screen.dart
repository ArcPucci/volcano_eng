import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class ExamQuestionsScreen extends StatelessWidget {
  const ExamQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BGWidget(
      hasVolcano: true,
      child: Column(
        children: [
          SimpleAppBar(
            title: 'Advanced level\n(Game 3)',
            hasBackButton: true,
            onBack: Navigator.of(context).pop,
          ),
          SizedBox(height: 16.h),
          const StageIndicator(currentIndex: 0, total: 7),
          SizedBox(height: 16.h),
          QuestionBox(
            question: Question(
              question:
                  '1. Describe the process of a volcanic eruption from the rise of magma to the eruption itself.',
              extraQuestion: '',
            ),
          ),
          SizedBox(height: 16.h),
          CustomInput3(controller: TextEditingController()),
          const Spacer(),
          const CustomButton2(text: 'Show Answer'),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
