import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';

class MaterialsProvider extends ChangeNotifier {
  MaterialsProvider({required GoRouter router}) : _router = router;
  final GoRouter _router;

  StudyMaterial _material = studyMaterials.first;

  StudyMaterial get material => _material;

  String get currentPath =>
      _router.routerDelegate.currentConfiguration.fullPath;

  void onSelect(StudyMaterial material) {
    _material = material;

    _router.go('$currentPath/material');
  }
}
