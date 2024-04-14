import 'package:volcano_eng/models/models.dart';

class Lesson {
  final int id;
  final String name;
  final String image;
  final List<List<Paragraph>> pages;
  final String answers;

  const Lesson({
    required this.id,
    required this.name,
    required this.image,
    required this.pages,
    required this.answers,
  });
}
