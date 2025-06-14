import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0xFF4EB7F2),
          image: DecorationImage(
            image: AssetImage(AppImages.imagesCardBackground),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31, right: 45, top: 16),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AppImages.imagesGallery),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
                  ),
                  // SizedBox(height: 12),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Flexible(child: SizedBox(height: 27)),
          ],
        ),
      ),
    );
  }
}
