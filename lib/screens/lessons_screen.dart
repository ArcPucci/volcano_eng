import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimpleAppBar(title: 'Levels'),
        SizedBox(height: 22.h),
        ChooseTextWidget(text: 'lesson'),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
                    child: Container(
                      width: 343.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.darkBlue3.withOpacity(0.1),
                        border: Border.all(
                          width: 1.sp,
                          color: Colors.white.withOpacity(0.05),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/png/example2.png',
                              width: 323.w,
                              height: 91.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Types of Volcanoes',
                                      style: AppTextStyles.textStyle8,
                                    ),
                                    Text(
                                      '1st lesson',
                                      style: AppTextStyles.textStyle2.copyWith(
                                        color: AppTheme.ginger,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/png/icons/next.png',
                                  width: 34.r,
                                  height: 34.r,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
