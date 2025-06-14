import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, this.isActive = false});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: isActive ? AppStyles.styleBold16(context) : AppStyles.styleRegular16(context),
          ),
        ),
        trailing: isActive
            ? Container(
                width: 3.27,
                color: const Color(0xFF4EB7F2),
              )
            : null,
      ),
    );
  }
}
