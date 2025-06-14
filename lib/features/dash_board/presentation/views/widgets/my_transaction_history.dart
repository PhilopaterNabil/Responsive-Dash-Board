import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/transaction_history_list_view.dart';

class MyTransactionHistory extends StatelessWidget {
  const MyTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFFAAAAAA)),
        ),
        SizedBox(height: 16),
        TransactionHistoryListView(),
      ],
    );
  }
}
