import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class ChooseTextWidget extends StatelessWidget {
  const ChooseTextWidget({
    super.key,
    required this.text,
    required this.action,
    required this.purpose,
  });

  final String text;
  final String action;
  final String purpose;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16.w),
        RichText(
          text: TextSpan(
            text: '$action the ',
            style: AppTextStyles.textStyle8.copyWith(
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                text: text,
                style: AppTextStyles.textStyle8.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppTheme.ginger,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: ' you want to $purpose!',
                style: AppTextStyles.textStyle8.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
