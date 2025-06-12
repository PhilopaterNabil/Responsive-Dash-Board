import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, response) {
          activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: Color(0xFF208BC7),
          radius: activeIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: Color(0xFF4DB7F2),
          radius: activeIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: Color(0xFF064060),
          radius: activeIndex == 2 ? 60 : 40,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          color: Color(0xFFE2DECD),
          radius: activeIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }
}
