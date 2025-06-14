import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key, this.isDetailedIncomeChart = false});

  final bool isDetailedIncomeChart;

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
          showTitle: widget.isDetailedIncomeChart ?? false,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          value: 40,
          titleStyle:
              AppStyles.styleMedium16.copyWith(color: activeIndex == 0 ? null : Colors.white),
          color: Color(0xFF208BC7),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: widget.isDetailedIncomeChart ?? false,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          value: 25,
          titleStyle:
              AppStyles.styleMedium16.copyWith(color: activeIndex == 1 ? null : Colors.white),
          color: Color(0xFF4DB7F2),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: widget.isDetailedIncomeChart ?? false,
          title: activeIndex == 2 ? 'Product royaltit' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          value: 20,
          titleStyle:
              AppStyles.styleMedium16.copyWith(color: activeIndex == 2 ? null : Colors.white),
          color: Color(0xFF064060),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: widget.isDetailedIncomeChart ?? false,
          title: activeIndex == 3 ? 'Other' : '22%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          value: 22,
          titleStyle:
              AppStyles.styleMedium16.copyWith(color: activeIndex == 3 ? null : Colors.white),
          color: Color(0xFFE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
