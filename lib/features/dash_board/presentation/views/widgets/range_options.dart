import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(width: 18),
          Transform.rotate(
            // Rotate the icon to point downwards
            angle: -3.14 / 2, // 90 degrees in radians (1 radian = 180 degrees)
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 16,
              color: const Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
