import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: const Color(0xFFFAFAFA),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 18,
              color: const Color(0xFF4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}