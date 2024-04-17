import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomInput3 extends StatelessWidget {
  const CustomInput3({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.darkBlue.withOpacity(0.1),
        border: Border.all(
          width: 1.sp,
          color: AppTheme.emerald,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle1.copyWith(
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration.collapsed(
                hintText: '',
              ),
            ),
          ),
          Container(
            width: 323.w,
            height: 2.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: AppTheme.emerald,
            ),
          ),
        ],
      ),
    );
  }
}
