import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomInput1 extends StatelessWidget {
  const CustomInput1({
    super.key,
    required this.focusNode,
    required this.controller,
  });

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      height: 20.r,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: 1,
        style: AppTextStyles.textStyle2.copyWith(
          fontWeight: FontWeight.w400,
          color: AppTheme.ginger,
        ),
        decoration: InputDecoration(
          isCollapsed: true,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.r,
              color: Colors.white,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.r,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
