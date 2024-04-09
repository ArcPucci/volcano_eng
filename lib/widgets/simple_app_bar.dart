import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    super.key,
    required this.title,
    this.hasBackButton = false,
    this.onBack,
  });

  final String title;
  final VoidCallback? onBack;
  final bool hasBackButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 68.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          hasBackButton
              ? GestureDetector(
                  onTap: onBack,
                  child: Image.asset(
                    'assets/png/icons/back.png',
                    width: 28.r,
                    height: 28.r,
                    fit: BoxFit.contain,
                  ),
                )
              : SizedBox(width: 28.r),
          Text(
            title,
            style: AppTextStyles.textStyle6,
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 28.r),
        ],
      ),
    );
  }
}
