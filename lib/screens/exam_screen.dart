import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({
    super.key,
    required this.examPassed,
  });

  final bool examPassed;

  @override
  Widget build(BuildContext context) {
    return examPassed ? _buildCertificateBody() : _buildBody(context);
  }

  Widget _buildCertificateBody() {
    return Column(
      children: [
        SimpleAppBar(title: 'Certificate'),
        BlurredBox(
          height: 583.h,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  'assets/png/certificate.png',
                  width: 343.w,
                  height: 236.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.h),
              Text('Certificate', style: AppTextStyles.textStyle10),
              SizedBox(height: 16.h),
              SizedBox(
                width: 309.w,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'Congratulations!\nYou have successfully completed all of our\n',
                    style: AppTextStyles.textStyle2,
                    children: [
                      TextSpan(
                        text: '“volcano lessons”',
                        style: AppTextStyles.textStyle2.copyWith(
                          color: AppTheme.ginger,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      TextSpan(text: ' and ', style: AppTextStyles.textStyle2),
                      TextSpan(
                        text: '“cumulative exam”.',
                        style: AppTextStyles.textStyle2.copyWith(
                          color: AppTheme.ginger,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: 299.w,
                child: Text(
                  'This certificate is proof of your success in learning English and your knowledge of volcanoes!',
                  style: AppTextStyles.textStyle2,
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/png/logo2.png',
                width: 142.w,
                height: 41.h,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
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
