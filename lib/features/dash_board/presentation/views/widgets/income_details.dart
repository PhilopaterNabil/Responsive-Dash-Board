import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/item_details_model.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(title: 'Design service', value: '40%', color: Color(0xFF208CC8)),
    ItemDetailsModel(title: 'Design product', value: '25%', color: Color(0xFF4EB7F2)),
    ItemDetailsModel(title: 'Product royalti', value: '20%', color: Color(0xFF064061)),
    ItemDetailsModel(title: 'Other', value: '22%', color: Color(0xFFE2DECD)),
  ];

  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) => ItemDetails(itemDetailsModel: item)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(itemDetailsModel: items[index]);
    //   },
    // );
  }
}
