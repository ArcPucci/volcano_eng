import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/widgets/dialogs/leave_dialog.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LessonsProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return ChangeNotifierProvider(
          create: (BuildContext context) {
            return TaskProvider()..onInit(value.tasks);
          },
          child: Consumer<TaskProvider>(
            builder: (BuildContext context, value2, Widget? child) {
              return Column(
                children: [
                  SimpleAppBar(
                    title: "${value.numerator} Lesson",
                    hasBackButton: true,
                    hasBottomBorder: value2.hasBottomBorder,
                    onBack: () async {
                      if(await onLeave(context)) {
                        context.pop();
                      }
                    },
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: value2.controller,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: Column(
                        children: [
                          CustomIndicator(
                            total: value.totalPages,
                            currentIndex: value.currentPage,
                          ),
                          SizedBox(height: 16.h),
                          if (value.hasImage) ...[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                value.image,
                                width: 343.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 16.h),
                          ],
                          BlurredBox(
                            padding: EdgeInsets.symmetric(
                              vertical: 16.h,
                              horizontal: 10.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                value.page.length,
                                (index) {
                                  final paragraph = value.page[index];
                                  return ParagraphWidget(paragraph: paragraph);
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 34.h),
                          CustomButton2(
                            text: 'Next',
                            onTap: () {
                              if(!value2.canGoNext && value.lastPage) return;
                              value.onNext(value2.answers);
                            },
                          ),
                          SizedBox(height: 150.h),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Future<bool> onLeave(BuildContext context) async {
    return await showCupertinoDialog(
      context: context,
      builder: (context) {
        return const LeaveDialog();
      },
    );
  }
}
