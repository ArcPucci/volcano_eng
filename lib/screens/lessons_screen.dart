import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final route = MaterialPageRoute(
        builder: (context) => const IntermediateScreen(),
      );

      Navigator.of(context, rootNavigator: true).push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LessonsProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            SimpleAppBar(
              title: value.title,
              onBack: context.pop,
              hasBackButton: true,
              center: false,
            ),
            SizedBox(height: 22.h),
            const ChooseTextWidget(
              text: 'lesson',
              action: 'Choose',
              purpose: 'study',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.lessons.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                itemBuilder: (context, index) {
                  final lesson = value.lessons[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: LessonCard(
                      lesson: lesson,
                      index: index,
                      onTap: () => value.onSelectLesson(lesson, index),
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
