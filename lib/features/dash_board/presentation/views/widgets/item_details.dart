import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    // return _buildItemDetails();
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: itemDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(itemDetailsModel.title, style: AppStyles.styleRegular16(context))),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFF208CC8)),
      ),
    );
  }

  Widget _buildItemDetails(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: itemDetailsModel.color,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              itemDetailsModel.title,
              style: AppStyles.styleRegular16(context),
            ),
            const SizedBox(width: 8),
            Text(
              itemDetailsModel.value,
              style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFF208CC8)),
            ),
          ],
        ),
      ),
    );
  }
}
