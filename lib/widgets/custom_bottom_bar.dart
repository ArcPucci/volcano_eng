import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/services/services.dart';
import 'package:volcano_eng/utils/utils.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
    required this.path,
    required this.service,
  });

  final String path;
  final PreferencesService service;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        border: Border(
          top: BorderSide(
            width: 1.sp,
            color: Colors.white,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          tabBarItems.length,
          (index) {
            final item = tabBarItems[index];
            final selected = getSelected() == index;
            return GestureDetector(
              onTap: () => onTap(item),
              child: Container(
                width: 58.w,
                height: 47.h,
                color: Colors.transparent,
                alignment: Alignment.center,
                child: _build(item, selected),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _build(TabBarItem item, bool selected) {
    if (selected) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            item.asset,
            width: 24.r,
            height: 24.r,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 5.h),
          SizedBox(
            child: FittedBox(
              fit: BoxFit.none,
              child: Text(
                item.title,
                style: AppTextStyles.textStyle9,
              ),
            ),
          ),
        ],
      );
    }
    return Opacity(
      opacity: 0.4,
      child: Image.asset(
        item.asset,
        width: 24.r,
        height: 24.r,
        fit: BoxFit.contain,
      ),
    );
  }

  int getSelected() {
    for (int i = tabBarItems.length - 1; i >= 0; i--) {
      final item = tabBarItems[i].path;
      if (widget.path.contains(item)) return i;
    }
    return 0;
  }

  void onTap(TabBarItem item) {
    if (item.id == 2) {
      final level = widget.service.getLevel();
      final maxLevel = levels.last.id;
      final value = Provider.of<QuizProvider>(context, listen: false);
      if (level > maxLevel || value.premium) {
        final route = MaterialPageRoute(
          builder: (context) => const PreExamScreen(),
        );

        Navigator.of(context, rootNavigator: true).push(route);
        return;
      }
    }
    setState(() => context.go(item.path));
  }
}
