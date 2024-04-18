import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferences preferences;

  PreferencesService(this.preferences);

  static const premiumKey = 'PREMIUM';
  static const firstInit = "FIRST_INIT";
  static const lessonsKey = "LESSONS_KEY";
  static const levelKey = "LESSONS_KEY";
  static const quizKey = "QUIZ_KEY";
  static const intermediateKey = "INTERMEDIATE";
  static const examKey = "EXAM";
  static const materialKey = "MATERIAL";

  Future<void> setPremium() async {
    await preferences.setBool(premiumKey, true);
  }

  bool getPremium() {
    return preferences.getBool(premiumKey) ?? false;
  }

  Future<void> setFirstInit() async {
    await preferences.setBool(firstInit, false);
  }

  bool getFirstInit() {
    return preferences.getBool(firstInit) ?? true;
  }

  Future<void> setQuiz(int index) async {
    await preferences.setInt(quizKey, index);
  }

  int getQuiz() {
    return preferences.getInt(quizKey) ?? 0;
  }

  Future<void> setMaterial(int index) async {
    await preferences.setInt(materialKey, index);
  }

  int getMaterial() {
    return preferences.getInt(materialKey) ?? 0;
  }

  Future<void> setLesson(int index) async {
    await preferences.setInt(lessonsKey, index);
  }

  int getLesson() {
    return preferences.getInt(lessonsKey) ?? 0;
  }

  Future<void> setLevel(int index) async {
    await preferences.setInt(levelKey, index);
  }

  int getLevel() {
    return preferences.getInt(levelKey) ?? 0;
  }

  Future<void> setIntermediateLevel() async {
    await preferences.setBool(intermediateKey, false);
  }

  bool firstEnterToIntermediate() {
    return preferences.getBool(intermediateKey) ?? true;
  }

  Future<void> setExam() async {
    await preferences.setBool(examKey, true);
  }

  bool getExam() {
    return preferences.getBool(examKey) ?? false;
  }
}