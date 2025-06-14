import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? dashBoardViewAppBar() : null,
      backgroundColor: Color(0XFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? Drawer(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: CustomDrawer(),
            )
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }

  AppBar dashBoardViewAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFFAFAFA),
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(Icons.menu),
        ),
      ),
    );
  }
}
