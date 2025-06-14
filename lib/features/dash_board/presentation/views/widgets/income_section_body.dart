import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: IncomeChart(isDetailedIncomeChart: true),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
