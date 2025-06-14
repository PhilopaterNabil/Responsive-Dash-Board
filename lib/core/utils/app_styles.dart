import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) => TextStyle(
        color: Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular14(context) => TextStyle(
        color: Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular16(context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleMedium16(context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium20(context) => TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(context) => TextStyle(
        color: Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold24(context) => TextStyle(
        color: Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold18(context) => TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleBold16(context) => TextStyle(
        color: Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );
}

// sacleFactor
// responsive font size
// (min , max) font size
double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // PlatformDispatcher platformDispatcher = PlatformDispatcher.instance;
  // double physicalWidth = platformDispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = platformDispatcher.views.first.devicePixelRatio;
  // double screenWidth = physicalWidth / devicePixelRatio;

  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.tablet) {
    return screenWidth / 550;
  } else if (screenWidth < SizeConfig.desktop) {
    return screenWidth / 1000;
  } else {
    return screenWidth / 1900;
  }
}
