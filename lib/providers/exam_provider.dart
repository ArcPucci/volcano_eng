import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/services/services.dart';

class ExamProvider extends ChangeNotifier {
  ExamProvider({
    required GoRouter router,
    required PreferencesService service,
  })  : _router = router,
        _service = service;

  final GoRouter _router;
  final PreferencesService _service;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  Completion get question => examQuestions[_currentIndex];

  bool _answerOpen = false;

  bool get answerOpen => _answerOpen;

  String get text => _answerOpen ? "Continue" : "Show Answer";

  String get answer => question.answer;

  int get total => examQuestions.length;

  TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  void init() {
    _currentIndex = 0;
    _answerOpen = false;
    _controller.clear();

    notifyListeners();
  }

  void onNext() {
    if (!answerOpen) {
      _answerOpen = true;

      notifyListeners();
      return;
    }

    if (_currentIndex == examQuestions.length - 1) {
      return;
    }

    _answerOpen = false;
    _controller.clear();
    _currentIndex++;
    notifyListeners();
  }
}
