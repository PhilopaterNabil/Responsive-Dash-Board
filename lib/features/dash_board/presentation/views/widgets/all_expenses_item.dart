import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, this.isSelected = false});

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconPath: allExpensesItemModel.iconPath,
            isSelected: isSelected,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: isSelected ? Colors.white : const Color(0xFF064061),
            ),
          ),
          SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: isSelected ? Color(0xFFFAFAFA) : const Color(0xFFAAAAAA),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: isSelected ? Colors.white : const Color(0xFF4EB7F2),
            ),
          ),
        ],
      ),
    );
  }
}
