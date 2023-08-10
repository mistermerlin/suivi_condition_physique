import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static Future<void> saveSteps(int steps) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('steps', steps);
  }

  static Future<int> getSteps() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('steps') ?? 0;
  }

  static Future<void> saveCalories(double calories) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('calories', calories);
  }

  static Future<double> getCalories() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble('calories') ?? 0.0;
  }
}
