import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/utils/utils.dart';

class LetterInput extends StatefulWidget {
  const LetterInput({
    super.key,
    required this.text,
    required this.onChanged,
  });

  final String text;
  final void Function(String value) onChanged;

  @override
  State<LetterInput> createState() => _LetterInputState();
}

class _LetterInputState extends State<LetterInput> {
  final controllers = <TextEditingController>[];
  final focusNodes = <FocusNode>[];
  String text = '';

  @override
  void initState() {
    super.initState();
    text = widget.text.replaceAll(' ', '');
    for (int i = 0; i < text.length; i++) {
      focusNodes.add(FocusNode());
      controllers.add(TextEditingController());
      controllers.last.addListener(() => widget.onChanged(onChanged()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.darkBlue.withOpacity(0.1),
        border: Border.all(
          width: 1.sp,
          color: AppTheme.emerald,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 11.w,
        vertical: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          text.length,
          (index) {
            final last = index == text.length - 1;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 21.w,
                  child: TextField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    style: AppTextStyles.textStyle8.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    textInputAction: last ? null : TextInputAction.next,
                    textAlign: TextAlign.center,
                    minLines: 1,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: const InputDecoration.collapsed(
                      hintText: '',
                    ),
                    onChanged: (value) {
                      if(value.isEmpty) return;
                      if(index + 1 == controllers.length) return;
                      focusNodes[index + 1].requestFocus();
                    },
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 21.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: AppTheme.emerald,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String onChanged() {
    String str = '';
    for (final item in controllers) {
      if (item.text.isEmpty) continue;
      str += item.text;
    }
    return str;
  }
}
