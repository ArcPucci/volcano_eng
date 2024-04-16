import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/widgets/buttons/buttons.dart';
import 'package:volcano_eng/widgets/inputs/inputs.dart';

class QuizInput extends StatefulWidget {
  const QuizInput({super.key});

  @override
  State<QuizInput> createState() => _QuizInputState();
}

class _QuizInputState extends State<QuizInput> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (context, value, child) {
        if (value.question is MultipleChoice) {
          final multiChoice = value.question as MultipleChoice;
          if (multiChoice.multipleChoice) {
            return GridView.builder(
              shrinkWrap: true,
              itemCount: multiChoice.answers.length,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w,
                mainAxisExtent: 50.h,
              ),
              itemBuilder: (context, index) {
                final selected = value.selectedOptions.contains(index);
                return QuizButton(
                  height: 58.h,
                  text: multiChoice.answers[index],
                  selected: selected,
                  onTap: () => value.onSelect(
                    index,
                    multiChoice.multipleChoice,
                  ),
                );
              },
            );
          }
          return Column(
            children: List.generate(
              multiChoice.answers.length,
              (index) {
                final answer = multiChoice.answers[index];
                final selected = value.selectedOptions.contains(index);
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: QuizButton(
                    height: 58.h,
                    text: answer,
                    selected: selected,
                    onTap: () => value.onSelect(
                      index,
                      multiChoice.multipleChoice,
                    ),
                  ),
                );
              },
            ),
          );
        }
        if (value.question is Reorder) {
          final reorder = value.question as Reorder;
          return GridView.builder(
            itemCount: reorder.options.length,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.w,
              mainAxisExtent: 50.h,
            ),
            itemBuilder: (context, index) {
              final selected = value.selectedOptions.contains(index);
              return QuizButton(
                height: 58.h,
                selected: selected,
                text: reorder.options[index],
                onTap: () => value.onSelect(index, true),
              );
            },
          );
        }
        if (value.question is Completion) {
          final completion = value.question as Completion;
          if (completion.fillingGaps) {
            return Align(
              alignment: Alignment.topCenter,
              child: LetterInput(
                text: completion.answer,
                onChanged: value.onChangedLetters,
              ),
            );
          }
          return Align(
            alignment: Alignment.topCenter,
            child: CustomInput3(controller: value.controller),
          );
        }
        if (value.question is Matching) {
          final matching = value.question as Matching;
          return SizedBox(
            width: 326.w,
            child: Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: List.generate(
                matching.options.length,
                (index) {
                  final height = index < 2 ? 96.h : 50.h;
                  final verticalPadding = index == 2 ? 0.0 : 10.h;
                  final alignment =
                      index == 2 ? Alignment.centerLeft : Alignment.topLeft;
                  final option = matching.options[index];
                  final selected = value.pairs.contains(option);
                  return QuizButton(
                    width: 158.w,
                    height: height,
                    alignment: alignment,
                    selected: selected,
                    verticalPadding: verticalPadding,
                    text: option.text,
                    onTap: () => value.onSelectPair(option),
                  );
                },
              ),
            ),
          );
        }
        return const Placeholder();
      },
    );
  }
}
