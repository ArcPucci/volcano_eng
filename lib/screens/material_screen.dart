import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/widgets/widgets.dart';
import 'package:widget_zoom/widget_zoom.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MaterialsProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            SimpleAppBar(
              title: value.material.title,
              hasBackButton: true,
              onBack: context.pop,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.material.materials.length,
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
                itemBuilder: (context, index) {
                  final material = value.material.materials[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 24.h),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: WidgetZoom(
                            heroAnimationTag: 'tag',
                            zoomWidget: Image.asset(
                              material,
                              width: 343.w,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.h,
                          right: 10.w,
                          child: Image.asset(
                            'assets/png/icons/zoom.png',
                            width: 24.w,
                            height: 24.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
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
