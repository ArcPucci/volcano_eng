import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomInput2 extends StatelessWidget {
  const CustomInput2({
    super.key,
    required this.focusNode,
    required this.controller,
  });

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323.w,
      padding: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.sp,
            color: focusNode.hasFocus ? AppTheme.ginger : Colors.white,
          ),
        ),
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        style: AppTextStyles.textStyle2.copyWith(
          fontWeight: FontWeight.w600,
          color: AppTheme.ginger,
        ),
        maxLines: null,
        decoration: const InputDecoration.collapsed(hintText: ''),
      ),
    );
  }
}
