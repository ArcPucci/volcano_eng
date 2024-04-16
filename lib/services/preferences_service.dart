import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferences preferences;

  PreferencesService(this.preferences);

  static const premiumKey = 'PREMIUM';
  static const firstInit = "FIRST_INIT";
  static const lessonsKey = "LESSONS_KEY";
  static const quizKey = "QUIZ_KEY";

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
}