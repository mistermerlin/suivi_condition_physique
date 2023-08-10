import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suivi_condition_physique/controllers/calories_controller.dart';

class CaloriesView extends StatelessWidget {
  final CaloriesController caloriesController = Get.find();

  CaloriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suivi des Calories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                'Calories brûlées : ${caloriesController.caloriesBurned.toStringAsFixed(2)}')),
            ElevatedButton(
              onPressed: () {
                caloriesController.addCalories(100.0);
              },
              child: const Text('Ajouter des calories'),
            ),
          ],
        ),
      ),
    );
  }
}
