import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class PreExamScreen extends StatefulWidget {
  const PreExamScreen({super.key});

  @override
  State<PreExamScreen> createState() => _PreExamScreenState();
}

class _PreExamScreenState extends State<PreExamScreen> {
  int currentPage = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BGWidget(
      hasVolcano: true,
      child: Column(
        children: [
          SizedBox(height: 30.h),
          CustomIndicator(total: 2, currentIndex: currentPage),
          SizedBox(height: 22.h),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) => setState(() => currentPage = value),
              children: [
                _buildFirstBody(),
                _buildSecondBody(),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          CustomButton1(
            text: currentPage == 0 ? 'Yes!' : 'Continue',
            onTap: onNext,
          ),
          SizedBox(height: 7.h),
          GestureDetector(
            onTap: Navigator.of(context).pop,
            child: Container(
              width: 184.w,
              height: 52.h,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Text(
                currentPage == 0 ? 'Thanks, maybe later...' : '',
                style: AppTextStyles.textStyle4,
              ),
            ),
          ),
          SizedBox(height: 7.h),
        ],
      ),
    );
  }

  Widget _buildFirstBody() {
    return _buildBody(
      [
        Text(
          'Exam',
          style: AppTextStyles.textStyle1.copyWith(
            color: AppTheme.emerald,
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Congratulations - you have reached the',
            style: AppTextStyles.textStyle2,
            children: [
              TextSpan(
                text: ' final exam',
                style: AppTextStyles.textStyle2.copyWith(
                  color: AppTheme.ginger,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text:
                '. This is an unusual exam - you will answer the question in written form, after that you will see the example of an answer to this question. You are free of evaluation, points and corrections. Are you ready?!',
                style: AppTextStyles.textStyle2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSecondBody() {
    return _buildBody(
      [
        Text(
          'Exam',
          style: AppTextStyles.textStyle1.copyWith(
            color: AppTheme.emerald,
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'The',
            style: AppTextStyles.textStyle2,
            children: [
              TextSpan(
                text: ' cumulative exam ',
                style: AppTextStyles.textStyle2.copyWith(
                  color: AppTheme.ginger,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text:
                'will cover all topics from the basic, intermediate, and advanced levels. It will include a mix of multiple-choice questions, short answers, and essay questions to assess comprehensive understanding and application of knowledge.',
                style: AppTextStyles.textStyle2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBody(List<Widget> children) {
    return Center(
      child: BlurredBox(
        height: 543.h,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ...children,
          ],
        ),
      ),
    );
  }

  void onNext() {
    if (currentPage == 1) {
      final route = MaterialPageRoute(
        builder: (context) => const ExamQuestionsScreen(),
      );
      Navigator.of(context).pushReplacement(route);
      return;
    }
    controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
