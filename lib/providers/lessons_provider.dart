import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/utils/utils.dart';

class LessonsProvider extends ChangeNotifier {
  LessonsProvider({required GoRouter router}) : _router = router;

  final GoRouter _router;

  Level _level = levels[0];

  List<Lesson> get lessons => _level.lessons;

  String get title => _level.name;

  Lesson _lesson = levels[0].lessons.first;

  int _currentPage = 0;

  Lesson get lesson => _lesson;

  int get totalPages => _lesson.pages.length;

  int get currentPage => _currentPage;

  String get complexity => _level.name.split(' ').first;

  List<Paragraph> get page => _lesson.pages[_currentPage];

  Paragraph get tasks =>
      _lesson.pages.last.firstWhere((e) => (e as SubParagraph).taskPart);

  String get image => _lesson.image;

  bool get hasImage => _currentPage == 0;

  String get currentPath =>
      _router.routerDelegate.currentConfiguration.fullPath;

  String _numerator = '1st';

  String get numerator => _numerator;

  String _answers = '';

  String get answers => _answers;

  void onSelectLevel(Level level) {
    _level = level;
    _router.go('/lessons');
  }

  void onSelectLesson(Lesson lesson, int numerator) {
    _lesson = lesson;
    _numerator = numerators[numerator];
    _currentPage = 0;
    _router.go('$currentPath/lesson');
  }

  void onNext(String answers) {
    if (_currentPage == totalPages - 1) {
      _router.go('/lessons/result');
      _answers = answers;
      return;
    }
    _currentPage++;
    notifyListeners();
  }
}
