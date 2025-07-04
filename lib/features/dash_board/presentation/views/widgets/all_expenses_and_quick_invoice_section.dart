import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
