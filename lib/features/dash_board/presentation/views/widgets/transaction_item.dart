import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        title: Text(transactionModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithdrawal ? Color(0xFFF3735E) : Color(0xFF7DD97B),
          ),
        ),
      ),
    );
  }
}
