import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class ChooseTextWidget extends StatelessWidget {
  const ChooseTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16.w),
        RichText(
          text: TextSpan(
            text: 'Choose the ',
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
                text: ' you want to study!',
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
