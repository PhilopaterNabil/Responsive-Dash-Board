import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: const [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xFFF1F1F1)),
        ],
      ),
    );
  }
}
