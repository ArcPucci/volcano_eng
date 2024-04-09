import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/buttons/buttons.dart';
import 'package:volcano_eng/widgets/gradient_circle.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.darkBlue,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 223.h,
              right: -72.r,
              child: GradientCircle(
                radius: 211.r,
                angle: pi / 2,
              ),
            ),
            Positioned(
              bottom: 58.h,
              left: -15.r,
              child: GradientCircle(
                radius: 132.r,
                angle: pi / 2,
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: 343.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/png/icons/back.png',
                          width: 28.r,
                          height: 28.r,
                          fit: BoxFit.contain,
                        ),
                        Text('Premium', style: AppTextStyles.textStyle6),
                        SizedBox(width: 28.r),
                      ],
                    ),
                  ),
                  SizedBox(height: 56.h),
                  Image.asset(
                    'assets/png/logo2.png',
                    width: 343.w,
                    height: 99.h,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 60.h),
                  Text(
                    'Premium features are:',
                    style: AppTextStyles.textStyle1,
                  ),
                  SizedBox(height: 16.h),
                  BlurredBox(
                    height: 79.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10.w),
                        Padding(
                          padding: EdgeInsets.only(top: 10.r),
                          child: RichText(
                            text: TextSpan(
                              text: 'Immediate access to all\n',
                              style: AppTextStyles.textStyle8,
                              children: [
                                TextSpan(
                                  text: 'levels ',
                                  style: AppTextStyles.textStyle8.copyWith(
                                    color: AppTheme.ginger,
                                  ),
                                ),
                                TextSpan(
                                  text: 'and',
                                  style: AppTextStyles.textStyle8,
                                ),
                                TextSpan(
                                  text: ' materials ',
                                  style: AppTextStyles.textStyle8.copyWith(
                                    color: AppTheme.ginger,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/png/icons/home.png',
                            width: 40.r,
                            height: 40.r,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 11.w),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  BlurredBox(
                    height: 79.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10.w),
                        Padding(
                          padding: EdgeInsets.only(top: 10.r),
                          child: RichText(
                            text: TextSpan(
                              text: 'Access to additional\n',
                              style: AppTextStyles.textStyle8,
                              children: [
                                TextSpan(
                                  text: 'advanced materials',
                                  style: AppTextStyles.textStyle8.copyWith(
                                    color: AppTheme.ginger,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/png/icons/book.png',
                            width: 40.r,
                            height: 40.r,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 11.w),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const CustomButton1(text: 'Buy Premium for \$2.99'),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: 356.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 107.w,
                          height: 48.h,
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Text(
                            'Privacy Policy',
                            style: AppTextStyles.textStyle7,
                          ),
                        ),
                        Container(
                          width: 67.w,
                          height: 48.h,
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Text(
                            'Restore',
                            style: AppTextStyles.textStyle7,
                          ),
                        ),
                        Container(
                          width: 102.w,
                          height: 48.h,
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Text(
                            'Terms of Use',
                            style: AppTextStyles.textStyle7,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
