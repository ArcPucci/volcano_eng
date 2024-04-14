import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class MaterialsScreen extends StatelessWidget {
  const MaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SimpleAppBar(title: 'Materials'),
        SizedBox(height: 22.h),
        const ChooseTextWidget(
          text: 'material',
          action: 'Choose',
          purpose: 'study',
        ),
        Expanded(
          child: ListView.builder(
            itemCount: studyMaterials.length,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            itemBuilder: (context, index) {
              final material = studyMaterials[index];
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: MaterialCard(
                  studyMaterial: material,
                  onTap: () => context.go('/materials/material'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
