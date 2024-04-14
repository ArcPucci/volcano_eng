import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimpleAppBar(
          title: 'Elementary Materials',
          hasBackButton: true,
          onBack: context.pop,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: studyMaterials.first.materials.length,
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    studyMaterials.first.materials[index],
                    width: 343.w,
                    fit: BoxFit.fitWidth,
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
