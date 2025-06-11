import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.userAvatar, required this.userName, required this.userEmail});

  final String userAvatar, userName, userEmail;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userAvatar),
        title: Text(
          userName,
          style: AppStyles.styleSemiBold16.copyWith(
            color: const Color(0xFF064061),
          ),
        ),
        subtitle: Text(
          userEmail,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
