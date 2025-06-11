import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/features/dash_board/data/models/user_info_model.dart';
import 'package:responsive_dash_board/features/dash_board/presentation/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> userInfoItems = [
    UserInfoModel(
      userAvatar: AppImages.imagesAvatar1,
      userName: 'Madrani Andi',
      userEmail: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      userAvatar: AppImages.imagesAvatar2,
      userName: 'Josua Nunito',
      userEmail: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      userAvatar: AppImages.imagesAvatar3,
      userName: 'Madrani Andi',
      userEmail: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoItems
            .map(
              (item) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: item),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: userInfoItems.length,
    //     itemBuilder: (context, index) {
    //       final item = userInfoItems[index];
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfoModel: item),
    //       );
    //     },
    //   ),
    // );
  }
}
