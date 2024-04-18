import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/services/services.dart';

class MaterialsProvider extends ChangeNotifier {
  MaterialsProvider({
    required GoRouter router,
    required PreferencesService service,
  })  : _router = router,
        _service = service;

  final GoRouter _router;
  final PreferencesService _service;

  StudyMaterial _material = studyMaterials.first;

  StudyMaterial get material => _material;

  String get currentPath =>
      _router.routerDelegate.currentConfiguration.fullPath;

  bool _premium = false;

  bool get premium => _premium;

  int _reachedMaterial = 0;

  int get reachedMaterial => _reachedMaterial;

  void init() {
    _premium = _service.getPremium();
    _reachedMaterial = _service.getMaterial();
    notifyListeners();
  }

  void onSelect(StudyMaterial material, BuildContext context) async {
    if(material.isPremium && !_premium) {
      onTapPremium(context);
      return;
    }

    if(_reachedMaterial < material.id && !_premium) return;

    _material = material;
    _router.go('$currentPath/material');


    if(_material.id != _reachedMaterial) return;

    _reachedMaterial++;
    await _service.setMaterial(_reachedMaterial);
    notifyListeners();
  }

  void onBuyPremium() {
    _premium = true;
    notifyListeners();
  }

  void onTapPremium(BuildContext context) {
    final route = MaterialPageRoute(
      builder: (context) => PremiumScreen(),
    );

    Navigator.of(context, rootNavigator: true).push(route);
  }
}
