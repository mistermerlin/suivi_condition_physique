import 'package:get/get.dart';

import '../models/step_model.dart';
import '../utils/local_storage.dart';

class StepController extends GetxController {
  RxInt steps = 0.obs;
  RxList<StepModel> stepList = <StepModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadSteps();
  }

  void incrementSteps() {
    steps.value++;
    _saveSteps();
  }

  Future<void> _loadSteps() async {
    final savedSteps = await LocalStorage.getSteps();
    steps.value = savedSteps;
  }

  Future<void> _saveSteps() async {
    await LocalStorage.saveSteps(steps.value);
  }

  // void addStep(int steps) {
  //   final newStep =
  //       StepModel(id: stepList.length, steps: steps, date: DateTime.now());
  //   stepList.add(newStep);
  // }

  // Vous pouvez ajouter plus de fonctions pour gérer la logique liée aux pas
}
