import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/quizzes.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/services/services.dart';

class QuizProvider extends ChangeNotifier {
  QuizProvider({
    required GoRouter router,
    required PreferencesService service,
  })  : _router = router,
        _service = service;

  final GoRouter _router;
  final PreferencesService _service;

  Quiz _quiz = quizzes.first;

  Quiz get quiz => _quiz;

  String get currentPath =>
      _router.routerDelegate.currentConfiguration.fullPath;

  int _currentTask = 0;

  int get currentPage => _currentTask;

  Question get question => _quiz.questions[_currentTask];

  final List<int> _selectedOptions = [];

  List<int> get selectedOptions => _selectedOptions;

  TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  String _letters = '';

  final List<List<String>> _answers = [];

  List<List<String>> get answers => _answers;

  static List<String> alphabet = ['A', 'B', 'C', 'D'];

  final List<Option> _pairs = [];

  List<Option> get pairs => _pairs;

  bool get premium => _service.getPremium();

  int get reachedQuiz => _service.getQuiz();

  void onSelectQuiz(Quiz quiz, BuildContext context) {
    if (quiz.premium && !premium) {
      _onTapPremium(context);
      return;
    }

    if(quiz.id > reachedQuiz) return;

    _quiz = quiz;
    _currentTask = 0;
    _answers.clear();
    _onReset();
    _router.go('$currentPath/quiz');
  }

  void onSelect(int index, bool multiChoice) {
    if (multiChoice) {
      if (_selectedOptions.contains(index)) {
        _selectedOptions.remove(index);
      } else {
        _selectedOptions.add(index);
      }
    } else {
      if (_selectedOptions.isEmpty) {
        _selectedOptions.add(index);
      } else {
        if (_selectedOptions.first == index) {
          _selectedOptions.clear();
        } else {
          _selectedOptions[0] = index;
        }
      }
    }

    notifyListeners();
  }

  void _onReset() {
    _selectedOptions.clear();
    _controller.clear();
    _pairs.clear();
    _letters = '';
  }

  void onChangedLetters(String value) {
    _letters = value;
  }

  void onNext() async {
    if (!isValid()) return;
    _checkAnswers();
    if (_currentTask == _quiz.questions.length - 1) {
      if (_quiz.id > reachedQuiz) {
        await _service.setQuiz(_quiz.id + 1);
      }

      _router.go('/quizzes/result');
      return;
    }

    _currentTask++;
    _onReset();

    notifyListeners();
  }

  void onSelectPair(Option option) {
    if (_pairs.length == 4) {
      _pairs.clear();
    }

    if (_pairs.contains(option)) {
      _pairs.remove(option);
    } else {
      if ((_pairs.length == 1 && (_pairs.last.id + option.id) % 2 != 0) ||
          (_pairs.length == 3 && (_pairs.last.id + option.id) % 2 != 0) ||
          _pairs.isEmpty ||
          _pairs.length % 2 == 0) {
        _pairs.add(option);
      }
    }

    notifyListeners();
  }

  bool isValid() {
    switch (question) {
      case Completion():
        final completion = question as Completion;
        if (completion.fillingGaps) {
          if (_letters.isEmpty) return false;
        } else {
          if (_controller.text.isEmpty) return false;
        }
      case MultipleChoice():
        if (_selectedOptions.isEmpty) return false;
      case Reorder():
        if (_selectedOptions.isEmpty) return false;
      case Matching():
        if (_pairs.length != 4) return false;
    }

    return true;
  }

  void _checkAnswers() {
    String answer = '';
    for (int i = 0; i < _selectedOptions.length; i++) {
      answer += alphabet[_selectedOptions[i]];
      if (i < _selectedOptions.length - 1) {
        answer += ',';
      }
    }
    _answers.add([]);
    switch (question) {
      case Completion():
        final completion = question as Completion;

        if (completion.fillingGaps) {
          final temp = completion.answer
              .split(' ')
              .reduce((a, b) => a + b)
              .toLowerCase();
          if (_letters.toLowerCase() != temp) {
            _answers.last.add(_letters);
            _answers.last.add("(${completion.answer})");
          } else {
            _answers.last.add(completion.answer);
          }
        } else {
          final temp = completion.answer.toLowerCase();
          final temp2 = _controller.text.toLowerCase();
          if (!temp.contains(temp2)) {
            _answers.last.add(_controller.text);
            _answers.last.add("(${completion.answer})");
          } else {
            _answers.last.add(completion.answer);
          }
        }

        break;
      case Reorder():
        final reorder = question as Reorder;

        String answer2 = '';
        final temp = reorder.answer.split(',');
        for (final item in temp) {
          for (int i = 0; i < reorder.options.length; i++) {
            if (item != alphabet[i]) continue;
            answer2 += reorder.options[i];
            break;
          }
        }

        String answer3 = '';
        for (int i = 0; i < _selectedOptions.length; i++) {
          answer3 += reorder.options[_selectedOptions[i]];
        }

        if (answer2 == answer3 || answer == reorder.answer) {
          _answers.last.add(reorder.answer);
        } else {
          _answers.last.add(answer);
          _answers.last.add("(${reorder.answer})");
        }

        break;
      case MultipleChoice():
        final multiChoice = question as MultipleChoice;

        if (answer == multiChoice.answer) {
          _answers.last.add(multiChoice.answer);
        } else {
          _answers.last.add(answer);
          _answers.last.add("(${multiChoice.answer})");
        }

        break;
      case Matching():
        final matching = question as Matching;

        for (int i = 0; i < _pairs.length; i += 2) {
          final firstSymbol = _pairs[i].text.split(')').first;
          if (alphabet.contains(firstSymbol)) {
            if (_answers.last.isEmpty) {
              _answers.last.add("${_pairs[i + 1].id}-$firstSymbol");
            } else {
              _answers.last.first += "${_pairs[i + 1].id}-$firstSymbol";
            }
          } else {
            final temp = _pairs[i + 1].text.split(')').first;
            if (_answers.last.isEmpty) {
              _answers.last.add("$firstSymbol-$temp");
            } else {
              _answers.last.first += "$firstSymbol-$temp";
            }
          }
          if (i == 0) _answers.last.first += ", ";
        }

        if (_answers.last.first == matching.answer) break;

        _answers.last.add("(${matching.answer})");
        break;
    }
  }

  void _onTapPremium(BuildContext context) {
    final route = MaterialPageRoute(
      builder: (context) => const PremiumScreen(),
    );

    Navigator.of(context, rootNavigator: true).push(route);
  }
}
