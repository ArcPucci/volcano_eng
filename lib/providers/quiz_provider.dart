import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/quizzes.dart';

class QuizProvider extends ChangeNotifier {
  QuizProvider({
    required GoRouter router,
  }) : _router = router;

  final GoRouter _router;

  Quiz _quiz = quizzes.first;

  Quiz get quiz => _quiz;

  String get currentPath =>
      _router.routerDelegate.currentConfiguration.fullPath;

  int _currentTask = 0;

  Question get question => _quiz.questions[_currentTask];

  void onSelectQuiz(Quiz quiz) {
    _quiz = quiz;
    _currentTask = 0;
    _router.go('$currentPath/quiz');
  }

  void onNext() {
    if (_currentTask == _quiz.questions.length - 1) {
      return;
    }

    _currentTask++;
    notifyListeners();
  }
}
