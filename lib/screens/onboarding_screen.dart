import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int currentPage = 0;

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
                  SizedBox(height: 30.h),
                  CustomIndicator(
                    total: 2,
                    currentIndex: currentPage,
                  ),
                  SizedBox(height: 12.h),
                  Expanded(
                    child: PageView(
                      controller: controller,
                      onPageChanged: onPageChanged,
                      children: [
                        _buildFirstBody(),
                        _buildSecondBody(),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomButton1(
                    text: currentPage == 0 ? 'Next' : 'See details',
                    onTap: onNext,
                  ),
                  SizedBox(height: 7.h),
                  SizedBox(
                    height: 52.h,
                    child: Text(
                      currentPage == 1 ? 'Thanks, maybe later...' : '',
                      style: AppTextStyles.textStyle4,
                    ),
                  ),
                  SizedBox(height: 7.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(Widget child) {
    return Center(
      child: BlurredBox(
        height: 555.h,
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
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildFirstBody() {
    return _buildBody(
      Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Nice to meet you in ',
              style: AppTextStyles.textStyle1,
              children: [
                TextSpan(
                  text: 'VolcanoEng.',
                  style: AppTextStyles.textStyle1.copyWith(
                    color: AppTheme.ginger,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: 337.w,
            child: Text(
              'Here you can experience volcanology english from Elementary to Advanced level in 27 lessons. There are quizzes and a cumulative exam at the end.',
              style: AppTextStyles.textStyle2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 26.h),
        ],
      ),
    );
  }

  Widget _buildSecondBody() {
    return _buildBody(
      Column(
        children: [
          SizedBox(
            width: 342.w,
            child: Text(
              'Advanced level has lots of additional\nmaterials and lifehacks - enjoy studying\nwith premium for ',
              style: AppTextStyles.textStyle2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 6.h),
          Text('\$2,99', style: AppTextStyles.textStyle5),
          SizedBox(height: 6.h),
          SizedBox(
            width: 342.w,
            child: Text(
              'For 1 month',
              style: AppTextStyles.textStyle2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  void onPageChanged(int value) {
    currentPage = value;
    setState(() {});
  }

  void onNext() {
    if (currentPage == 1) {
      return;
    }
    controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
