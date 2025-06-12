import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: itemDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(itemDetailsModel.title, style: AppStyles.styleRegular16),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16.copyWith(color: Color(0xFF208CC8)),
      ),
    );
  }
}
