import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.iconPath, this.isSelected = false});

  final String iconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: isSelected ? Colors.white.withOpacity(0.1) : const Color(0xFFFAFAFA),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : const Color(0xFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: isSelected ? Colors.white : Color(0xFF064061),
          size: 16,
        ),
      ],
    );
  }
}
