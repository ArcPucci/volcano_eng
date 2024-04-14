import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/boxes/blurred_box.dart';

class CustomButton3 extends StatelessWidget {
  const CustomButton3({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlurredBox(
        height: 61.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: AppTextStyles.textStyle2),
            Image.asset(
              'assets/png/icons/external_drive.png',
              width: 25.r,
              height: 25.r,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
