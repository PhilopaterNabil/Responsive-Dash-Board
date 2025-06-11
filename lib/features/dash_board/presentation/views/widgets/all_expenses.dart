import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
