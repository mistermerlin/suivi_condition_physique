// step_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suivi_condition_physique/controllers/step_controller.dart';
import 'package:suivi_condition_physique/models/step_model.dart';
import 'package:suivi_condition_physique/widgets/custom_button.dart';

class StepView extends StatelessWidget {
  final StepController stepController = Get.find();

  StepView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suivi des Pas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Ajouter des pas',
              onPressed: () {
                stepController.incrementSteps();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: stepController.stepList.length,
                itemBuilder: (context, index) {
                  final StepModel step = stepController.stepList[index];
                  return ListTile(
                    title: Text('Pas : ${step.steps}'),
                    subtitle: Text('Date : ${step.date}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
