import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.total,
    required this.currentIndex,
  });

  final int total;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          total,
          (index) {
            double opacity = currentIndex < index ? 0.4 : 1;
            final width = (343.w - (total - 1) * 7.w) / total;
            return Container(
              width: width,
              height: 3.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white.withOpacity(opacity),
              ),
            );
          },
        ),
      ),
    );
  }
}
