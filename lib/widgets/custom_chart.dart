import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomChart extends StatelessWidget {
  final List<FlSpot> dataPoints;

  const CustomChart({super.key, required this.dataPoints});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          // Configurez les données et l'apparence du graphique
          ),
    );
  }
}
