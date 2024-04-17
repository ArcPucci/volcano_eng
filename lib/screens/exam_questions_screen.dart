import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class ExamQuestionsScreen extends StatelessWidget {
  const ExamQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ExamProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return BGWidget(
          hasVolcano: true,
          child: Column(
            children: [
              SimpleAppBar(
                title: 'Advanced level\n(Game 3)',
                hasBackButton: true,
                onBack: Navigator.of(context).pop,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Column(
                    children: [
                      StageIndicator(
                        currentIndex: value.currentIndex,
                        total: value.total,
                      ),
                      SizedBox(height: 16.h),
                      QuestionBox(question: value.question),
                      SizedBox(height: 16.h),
                      CustomInput3(controller: value.controller),
                      Visibility(
                        visible: value.answerOpen,
                        child: Column(
                          children: [
                            SizedBox(height: 22.h),
                            Text(
                              'Correct answer',
                              style: AppTextStyles.textStyle8.copyWith(
                                color: AppTheme.emerald,
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              value.answer,
                              textAlign: TextAlign.center,
                              style: AppTextStyles.textStyle8,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 300.h),
                    ],
                  ),
                ),
              ),
              CustomButton2(
                text: value.text,
                onTap: () => value.onNext(context),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        );
      },
    );
  }
}
