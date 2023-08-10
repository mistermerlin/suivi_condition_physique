import 'package:get/get.dart';

import '../models/calories_model.dart';
import '../utils/local_storage.dart';

class CaloriesController extends GetxController {
  RxDouble caloriesBurned = 0.0.obs;
  RxList<CaloriesModel> caloriesList = <CaloriesModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadCalories();
  }

  void addCalories(double amount) {
    caloriesBurned.value += amount;
    _saveCalories();
  }

  Future<void> _loadCalories() async {
    final savedCalories = await LocalStorage.getCalories();
    caloriesBurned.value = savedCalories;
  }

  Future<void> _saveCalories() async {
    await LocalStorage.saveCalories(caloriesBurned.value);
  }
}
