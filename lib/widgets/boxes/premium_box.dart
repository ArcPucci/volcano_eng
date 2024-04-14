import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class PremiumBox extends StatelessWidget {
  const PremiumBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapPremium(context),
      child: BlurredBox(
        child: Column(
          children: [
            SizedBox(height: 14.h),
            SizedBox(
              width: 315.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Premium',
                      style: AppTextStyles.textStyle8.copyWith(
                        color: AppTheme.ginger,
                      ),
                      children: [
                        TextSpan(
                          text: ' gives access to:',
                          style: AppTextStyles.textStyle8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      text: ' • Advanced',
                      style: AppTextStyles.textStyle2,
                      children: [
                        TextSpan(
                          text: ' volcano level',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      text: ' • Advanced',
                      style: AppTextStyles.textStyle2,
                      children: [
                        TextSpan(
                          text: ' level in quiz',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      text: ' • Advanced',
                      style: AppTextStyles.textStyle2,
                      children: [
                        TextSpan(
                          text: ' materials',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            CustomButton1(
              text: 'Buy Premium',
              onTap: () => onTapPremium(context),
            ),
          ],
        ),
      ),
    );
  }

  void onTapPremium(BuildContext context) {
    final route = MaterialPageRoute(
      builder: (context) => const PremiumScreen(),
    );

    Navigator.of(context, rootNavigator: true).push(route);
  }
}
