import 'package:get/get.dart';

import '../main_bindings.dart';
import '../views/calories_view.dart';
import '../views/home_view.dart';
import '../views/step_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/',
      page: () => const HomeView(),
      binding: MainBindings(), // Liaison pour les contrôleurs globaux
    ),
    GetPage(
      name: '/step',
      page: () => StepView(),
      // binding:
      //     StepControllerBindings(), // Liaison spécifique au contrôleur de pas
    ),
    GetPage(
      name: '/calories',
      page: () => CaloriesView(),
      // binding:
      //     CaloriesControllerBindings(), // Liaison spécifique au contrôleur de calories
    ),
  ];
}
