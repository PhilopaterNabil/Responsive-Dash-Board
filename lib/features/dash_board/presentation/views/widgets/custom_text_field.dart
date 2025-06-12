import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFFAFAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        disabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xFFAAAAAA),
        ),
      ),
      cursorColor: Colors.black,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
  }
}
