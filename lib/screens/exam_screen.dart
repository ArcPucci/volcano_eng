import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 55.h),
        BlurredBox(
          height: 545.h,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: [
              SizedBox(
                width: 334.w,
                height: 336.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Image.asset(
                          'assets/png/volcano.png',
                          width: 265.w,
                          height: 298.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Image.asset(
                          'assets/png/logo.png',
                          width: 334.w,
                          height: 223.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Exam',
                style: AppTextStyles.textStyle1.copyWith(
                  color: AppTheme.emerald,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'To begin the exam, first complete the',
                  style: AppTextStyles.textStyle2,
                  children: [
                    TextSpan(
                      text: ' three levels ',
                      style: AppTextStyles.textStyle2.copyWith(
                        color: AppTheme.ginger,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: 'on the main screen.',
                      style: AppTextStyles.textStyle2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        CustomButton2(text: 'Ok', onTap: () => context.go('/')),
        SizedBox(height: 16.h),
      ],
    );
  }
}
