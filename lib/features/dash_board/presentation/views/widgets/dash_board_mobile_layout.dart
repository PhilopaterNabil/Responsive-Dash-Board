import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/income_section.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
