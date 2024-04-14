import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    super.key,
    required this.title,
    this.hasBackButton = false,
    this.onBack,
    this.center = true,
    this.hasBottomBorder = false,
  });

  final String title;
  final VoidCallback? onBack;
  final bool hasBackButton;
  final bool hasBottomBorder;
  final bool center;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 375.w,
      height: 68.h,
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
        border: hasBottomBorder
            ? Border(
                bottom: BorderSide(
                  width: 1.sp,
                  color: Colors.white,
                ),
              )
            : null,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: _buildRow(),
    );
  }

  Widget _buildRow() {
    if (center) {
      return Row(
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
      );
    }
    return Row(
      children: [
        GestureDetector(
          onTap: onBack,
          child: Image.asset(
            'assets/png/icons/back.png',
            width: 28.r,
            height: 28.r,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          title,
          style: AppTextStyles.textStyle6,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
