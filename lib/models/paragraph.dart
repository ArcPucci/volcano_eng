import 'package:flutter/material.dart';

class Paragraph {
  final String title;

  Paragraph({required this.title});
}

class SubParagraph extends Paragraph {
  SubParagraph({
    required super.title,
    this.hint = '',
    this.fillGaps = true,
    this.taskPart = false,
    this.titleColor = Colors.white,
    required this.subTexts,
  });

  final bool taskPart;
  final bool fillGaps;
  final Color titleColor;
  final String hint;
  final List<SubText> subTexts;
}

class SubText {
  final String text;
  final List<String> examples;

  SubText({required this.text, required this.examples});
}