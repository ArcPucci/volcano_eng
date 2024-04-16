import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class NumberBox extends StatelessWidget {
  const NumberBox({
    super.key,
    required this.index,
    required this.achieved,
  });

  final int index;
  final bool achieved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: achieved ? AppTheme.emerald : Colors.white,
      ),
      alignment: Alignment.center,
      child: Text(
        '${index + 1}',
        style: AppTextStyles.textStyle2.copyWith(
          fontWeight: FontWeight.w400,
          color: achieved ? null : Colors.black,
        ),
      ),
    );
  }
}
