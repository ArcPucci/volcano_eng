import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LessonsProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            const SimpleAppBar(title: 'Levels'),
            SizedBox(height: 22.h),
            const ChooseTextWidget(
              text: 'level',
              action: 'Choose',
              purpose: 'study',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: levels.length,
                padding: EdgeInsets.symmetric(
                  vertical: 16.h,
                  horizontal: 16.w,
                ),
                itemBuilder: (context, index) {
                  final level = levels[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: LevelCard(
                      open: index == 0,
                      level: level,
                      onTap: () => value.onSelectLevel(level),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
