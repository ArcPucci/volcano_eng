import 'package:volcano_eng/models/models.dart';

class Level {
  final int id;
  final String name;
  final int complexity;
  final String asset;
  final bool premium;
  final List<Lesson> lessons;

  const Level({
    required this.id,
    required this.name,
    required this.complexity,
    required this.asset,
    this.premium = false,
    required this.lessons,
  });
}