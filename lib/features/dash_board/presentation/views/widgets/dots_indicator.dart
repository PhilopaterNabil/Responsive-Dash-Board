import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.cureentPageIndex});

  final int cureentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => CustomDotIndicator(isActive: index == cureentPageIndex),
      ),
    );
  }
}
