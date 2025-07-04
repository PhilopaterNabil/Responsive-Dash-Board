import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPageIndex);

    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        SizedBox(height: 19),
        DotsIndicator(cureentPageIndex: currentPageIndex),
      ],
    );
  }
}
