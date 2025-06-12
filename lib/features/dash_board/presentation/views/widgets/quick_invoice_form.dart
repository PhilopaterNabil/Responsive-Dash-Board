import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer name', hintText: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(title: 'Customer Email', hintText: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Item name', hintText: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Item mount', hintText: 'USD')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                textColor: Color(0xFF4EB7F2),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(title: 'Send Money')),
          ],
        ),
      ],
    );
  }
}
