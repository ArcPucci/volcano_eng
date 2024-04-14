import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class ParagraphWidget extends StatelessWidget {
  const ParagraphWidget({
    super.key,
    required this.paragraph,
  });

  final Paragraph paragraph;

  @override
  Widget build(BuildContext context) {
    if (paragraph is SubParagraph) {
      final subParagraph = paragraph as SubParagraph;
      return Consumer<TaskProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (subParagraph.title.isNotEmpty) ...[
                Text(
                  subParagraph.title,
                  style: AppTextStyles.textStyle2.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.h),
              ],
              if (subParagraph.hint.isNotEmpty) ...[
                Text(
                  subParagraph.hint,
                  style: AppTextStyles.textStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppTheme.emerald,
                  ),
                ),
                SizedBox(height: 16.h),
              ],
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  subParagraph.subTexts.length,
                  (index) {
                    final subText = subParagraph.subTexts[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (subParagraph.taskPart)
                          if (subParagraph.fillGaps) ...[
                            Wrap(children: value.widgets[index]),
                            SizedBox(height: 4.h),
                            if (value.isActiveLine(index))
                              Container(
                                width: 323.w,
                                height: 1.sp,
                                color: AppTheme.ginger,
                              ),
                          ] else ...[
                            Text(
                              subText.text,
                              style: AppTextStyles.textStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 16.h),
                            CustomInput2(
                              focusNode: value.focusNodes[index].first,
                              controller: value.controllers[index].first,
                            ),
                          ],
                        if (!subParagraph.taskPart)
                          Text(
                            subText.text,
                            style: AppTextStyles.textStyle2.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        Column(
                          children: List.generate(
                            subText.examples.length,
                            (index) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " • ",
                                    style: AppTextStyles.textStyle2.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      subText.examples[index],
                                      style: AppTextStyles.textStyle2.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 16.h),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      );
    }
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Text(
        paragraph.title,
        style: AppTextStyles.textStyle8,
      ),
    );
  }
}
