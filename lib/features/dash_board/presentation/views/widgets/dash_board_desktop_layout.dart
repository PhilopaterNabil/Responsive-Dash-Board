import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/income_section.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardsAndTransactionHistorySection(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
