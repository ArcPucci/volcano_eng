import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SimpleAppBar(title: 'Levels'),
        SizedBox(height: 22.h),
        const ChooseTextWidget(text: 'level'),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: LevelCard(onTap: () => context.go('/lessons')),
              );
            },
          ),
        ),
      ],
    );
  }
}
