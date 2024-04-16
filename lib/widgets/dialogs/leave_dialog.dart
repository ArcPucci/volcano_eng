import 'package:flutter/cupertino.dart';
import 'package:volcano_eng/utils/utils.dart';

class LeaveDialog extends StatelessWidget {
  const LeaveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        'Do you really want to exit?',
        style: AppTextStyles.dialogTitle,
      ),
      content: Text(
        'If you exit, progress will not be saved!',
        style: AppTextStyles.dialogContent,
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(
            'Yes',
            style: AppTextStyles.dialogTitle.copyWith(
              fontWeight: FontWeight.w500,
              color: AppTheme.systemRed,
            ),
          ),
        ),
        CupertinoDialogAction(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(
            'No',
            style: AppTextStyles.dialogTitle.copyWith(
              fontWeight: FontWeight.w500,
              color: AppTheme.systemBlue,
            ),
          ),
        ),
      ],
    );
  }
}
