import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/step');
              },
              child: const Text('Suivi des Pas'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/calories');
              },
              child: const Text('Suivi des Calories'),
            ),
          ],
        ),
      ),
    );
  }
}
