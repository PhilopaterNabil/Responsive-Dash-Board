import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/user_info_list_tile.dart';

import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userAvatar: AppImages.imagesAvatar3,
              userName: 'Lekan Okeowo',
              userEmail: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          // for (var item in drawerItems) DrawerItem(drawerItemModel: item),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                DrawerItem(
                  drawerItemModel:
                      DrawerItemModel(title: 'Setting System', image: AppImages.imagesSettings),
                ),
                DrawerItem(
                  drawerItemModel:
                      DrawerItemModel(title: 'Logout Account', image: AppImages.imagesLogout),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
