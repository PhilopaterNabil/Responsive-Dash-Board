import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  static const List<AllExpensesItemModel> allExpensesItems = [
    AllExpensesItemModel(
      iconPath: AppImages.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      iconPath: AppImages.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      iconPath: AppImages.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedIndex = 0;
  void onItemSelected(int index) {
    if (selectedIndex == index) return;
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemsListView.allExpensesItems.asMap().entries.map((e) {
        int index = e.key;
        AllExpensesItemModel item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () => onItemSelected(index),
            child: Padding(
              padding: index == 1 ? const EdgeInsets.symmetric(horizontal: 12) : EdgeInsets.zero,
              child:
                  AllExpensesItem(allExpensesItemModel: item, isSelected: selectedIndex == index),
            ),
          ),
        );
      }).toList(),
    );
  }
}
