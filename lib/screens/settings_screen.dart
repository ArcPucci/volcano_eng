import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            const SimpleAppBar(title: 'Settings'),
            SizedBox(height: 22.h),
            if (!value.premium) ...[
              const PremiumBox(),
              SizedBox(height: 16.h),
            ],
            const CustomButton3(text: 'Terms of use'),
            SizedBox(height: 16.h),
            const CustomButton3(text: 'Privacy Policy'),
          ],
        );
      },
    );
  }
}
