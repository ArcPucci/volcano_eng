import 'package:flutter/material.dart';
import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';
import 'package:volcano_eng/widgets/widgets.dart';

class TaskProvider extends ChangeNotifier {
  final List<List<Widget>> _widgets = [];

  List<List<Widget>> get widgets => _widgets;

  final List<List<TextEditingController>> _controllers = [];

  List<List<TextEditingController>> get controllers => _controllers;

  final List<List<FocusNode>> _focusNodes = [];

  List<List<FocusNode>> get focusNodes => _focusNodes;

  final ScrollController _controller = ScrollController();

  ScrollController get controller => _controller;

  bool get hasBottomBorder => _hasBottomBar;

  bool _hasBottomBar = false;

  String get answers {
    String temp = '';
    for (int i = 0; i < _controllers.length; i++) {
      temp += '${i + 1}. ';
      for (int j = 0; j < _controllers[i].length; j++) {
        temp += _controllers[i][j].text;
        if (_controllers[i].length > 1 && j != _controllers[i].length - 1) {
          temp += ', ';
        }
      }
      if (i != _controllers.length - 1) {
        temp += '\n';
      }
    }
    return temp;
  }

  void onInit(Paragraph paragraph) {
    _controller.addListener(() {
      _hasBottomBar = _controller.offset > 0;
      notifyListeners();
    });
    _controllers.clear();
    _focusNodes.clear();
    _widgets.clear();
    final subParagraph = paragraph as SubParagraph;

    if (subParagraph.fillGaps) {
      _onGenerateForFillingGaps(subParagraph);
    } else {
      _onGenerateForFullEnter(subParagraph);
    }

    notifyListeners();
  }

  bool isActiveLine(int index) {
    for (final focusNode in _focusNodes[index]) {
      if (focusNode.hasFocus) return true;
    }
    return false;
  }

  void _onGenerateForFullEnter(SubParagraph subParagraph) {
    for (int i = 0; i < subParagraph.subTexts.length; i++) {
      _controllers.add([TextEditingController()]);
      _focusNodes.add([FocusNode()]);
      _focusNodes.last.last.addListener(() => notifyListeners());
    }
  }

  void _onGenerateForFillingGaps(SubParagraph subParagraph) {
    for (final text in subParagraph.subTexts) {
      _onGenerateWidgets(text.text);
    }
  }

  void _onGenerateWidgets(String text) {
    final texts = text.split('__________');
    final List<Widget> temp = texts
        .map(
          (e) => Text(
            e,
            style: AppTextStyles.textStyle2.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        )
        .toList();
    final List<Widget> list = [];
    final List<FocusNode> list2 = [];
    final List<TextEditingController> list3 = [];
    for (int i = 0; i < temp.length; i++) {
      list.add(temp[i]);
      if (i != temp.length - 1) {
        list2.add(FocusNode());
        list3.add(TextEditingController());
        list.add(
          CustomInput1(
            focusNode: list2.last,
            controller: list3.last,
          ),
        );
        list2.last.addListener(() => notifyListeners());
      }
    }
    _widgets.add(list);
    _focusNodes.add(list2);
    _controllers.add(list3);
  }
}
