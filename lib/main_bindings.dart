import 'package:get/get.dart';
import 'package:suivi_condition_physique/controllers/step_controller.dart';
import 'package:suivi_condition_physique/controllers/calories_controller.dart';

class MainBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StepController(), fenix: true);
    Get.lazyPut(() => CaloriesController(), fenix: true);
  }
}
