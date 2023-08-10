import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_bindings.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Suivi de Condition Physique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Route initiale
      getPages: AppPages.pages, // Utilisation des routes configurées
      initialBinding: MainBindings(), // Utilisation de la liaison principale
    );
  }
}
