import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';

class QuestionBox extends StatelessWidget {
  const QuestionBox({super.key, required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.emerald,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 40.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question.question,
            textAlign: TextAlign.center,
            style: AppTextStyles.textStyle1.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (question is Completion &&
              (question as Completion).words.isNotEmpty) ...[
            SizedBox(height: 15.h),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: List.generate(
                  (question as Completion).words.length,
                  (index) {
                    final word = (question as Completion).words[index];
                    return TextSpan(
                      text: word.word,
                      style: AppTextStyles.textStyle1.copyWith(
                        fontWeight:
                        word.isBold ? FontWeight.w600 : FontWeight.w400,
                      ),
                    );
                  },
                ),
              ),
            ),
          ] else if (question.extraQuestion.isNotEmpty) ...[
            SizedBox(height: 15.h),
            Text(
              question.extraQuestion,
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle1.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
