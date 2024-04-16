import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class IntermediateScreen extends StatelessWidget {
  const IntermediateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.darkBlue,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 223.h,
              left: -45.r,
              child: GradientCircle(radius: 211.r),
            ),
            Positioned(
              bottom: 9.h,
              right: -42.r,
              child: GradientCircle(radius: 132.r),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  SizedBox(height: 55.h),
                  BlurredBox(
                    height: 526.h,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Column(
                      children: [
                        SizedBox(height: 16.h),
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
                        const Spacer(),
                        Text(
                          'Intermediate',
                          style: AppTextStyles.textStyle1.copyWith(
                            color: AppTheme.emerald,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          'Deepen understanding of volcanology with a focus on processes and impacts, and introduce complex grammar structures.',
                          style: AppTextStyles.textStyle2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomButton2(
                    text: 'Ok',
                    onTap: Navigator.of(context).pop,
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
