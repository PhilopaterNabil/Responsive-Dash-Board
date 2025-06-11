import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox.shrink(),
        tabletLayout: (context) => const SizedBox.shrink(),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
