import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class MaterialCard extends StatelessWidget {
  const MaterialCard({
    super.key,
    required this.studyMaterial,
    this.onTap,
    this.premium = false,
    this.open = false,
  });

  final VoidCallback? onTap;
  final StudyMaterial studyMaterial;
  final bool premium;
  final bool open;

  @override
  Widget build(BuildContext context) {
    final opacity = premium || open
        ? 1.0
        : premium
            ? 1.0
            : 0.5;
    return GestureDetector(
      onTap: onTap,
      child: BlurredBox(
        height: 180.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                studyMaterial.asset,
                width: 323.w,
                height: 91.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: opacity,
                        child: Text(
                          studyMaterial.title,
                          style: AppTextStyles.textStyle8,
                        ),
                      ),
                      if (!premium && studyMaterial.isPremium)
                        Text(
                          'To unlock this level, buy Premium!',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      if (!studyMaterial.isPremium && !open && !premium)
                        Text(
                          'Go to level 1 first.',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      if (premium || (open && !studyMaterial.isPremium))
                        Text(
                          '${studyMaterial.materials.length} Files',
                          style: AppTextStyles.textStyle2.copyWith(
                            color: AppTheme.ginger,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                    ],
                  ),
                  Opacity(
                    opacity: opacity,
                    child: LevelIndicator(level: studyMaterial.complexity),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
