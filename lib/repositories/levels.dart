import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';

final List<Level> levels = [
  Level(
    id: 0,
    name: "Elementary volcano level",
    complexity: 1,
    asset: 'assets/png/level1.png',
    lessons: elementaryLessons,
  ),
  Level(
    id: 1,
    name: "Intermediate volcano level",
    complexity: 2,
    asset: 'assets/png/level2.png',
    lessons: intermediateLessons,
  ),
  Level(
    id: 2,
    name: "Advanced volcano level",
    complexity: 3,
    asset: 'assets/png/level3.png',
    premium: true,
    lessons: advancedLessons,
  ),
];
