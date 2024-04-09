import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        border: Border(
          top: BorderSide(
            width: 1.sp,
            color: Colors.white,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          tabBarItems.length,
          (index) {
            final item = tabBarItems[index];
            return Container(
              width: 48.w,
              height: 43.h,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: _build(item, index == 0),
            );
          },
        ),
      ),
    );
  }

  Widget _build(TabBarItem item, bool selected) {
    if (selected) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            item.asset,
            width: 24.r,
            height: 24.r,
            fit: BoxFit.contain,
          ),
          Text(
            item.title,
            style: AppTextStyles.textStyle7,
          ),
        ],
      );
    }
    return Opacity(
      opacity: 0.4,
      child: Image.asset(
        item.asset,
        width: 24.r,
        height: 24.r,
        fit: BoxFit.contain,
      ),
    );
  }
}
