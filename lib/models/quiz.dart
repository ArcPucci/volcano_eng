import 'package:volcano_eng/models/models.dart';

class Quiz {
  final int id;
  final String name;
  final String level;
  final int complexity;
  final List<Question> questions;

  const Quiz({
    required this.id,
    required this.name,
    required this.level,
    required this.complexity,
    required this.questions,
  });
}