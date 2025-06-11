import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: AppImages.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: AppImages.imagesMyInvestments),
    DrawerItemModel(title: 'Statistics', image: AppImages.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: AppImages.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: AppImages.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex == index) return;
            setState(() {
              activeIndex = index;
            });
          },
          child: DrawerItem(
            drawerItemModel: drawerItems[index],
            isActive: activeIndex == index,
          ),
        );
      },
    );
  }
}
