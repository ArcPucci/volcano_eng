class StudyMaterial {
  final int id;
  final String asset;
  final String title;
  final int complexity;
  final bool isPremium;
  final List<String> materials;

  const StudyMaterial({
    required this.id,
    required this.asset,
    required this.title,
    required this.complexity,
    this.isPremium = false,
    required this.materials,
  });
}