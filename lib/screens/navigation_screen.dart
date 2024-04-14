import 'package:flutter/material.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({
    super.key,
    required this.child,
    required this.path,
    this.hasBottomBar = true,
    this.hasVolcano = false,
  });

  final String path;
  final bool hasBottomBar;
  final bool hasVolcano;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BGWidget(
      hasVolcano: hasVolcano,
      child: Column(
        children: [
          Expanded(child: child),
          if (hasBottomBar) CustomBottomBar(path: path),
        ],
      ),
    );
  }
}
