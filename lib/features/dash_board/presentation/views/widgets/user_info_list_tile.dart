import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.userAvatar, required this.userName, required this.userEmail});

  final String userAvatar, userName, userEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10, right: 20),
      child: Card(
        color: Color(0xFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(userAvatar),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              userName,
              style: AppStyles.styleSemiBold16.copyWith(
                color: const Color(0xFF064061),
              ),
            ),
          ),
          subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              userEmail,
              style: AppStyles.styleRegular12,
            ),
          ),
        ),
      ),
    );
  }
}
