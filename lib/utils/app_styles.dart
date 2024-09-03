import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontSize: responsiveText(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontSize: responsiveText(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontSize: responsiveText(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: responsiveText(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: responsiveText(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontSize: responsiveText(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        color: const Color(0xff4eb7f2),
        fontSize: responsiveText(context, fontSize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: responsiveText(context, fontSize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: responsiveText(context, fontSize: 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: responsiveText(context, fontSize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }
}

//scale factor
//responsive text
//(min, max) font size
double responsiveText(context, {required double fontSize}) {
  double scalefactor = getScaleFactor(context);
  double responsivefontSize = fontSize * scalefactor;
  double lowerLimit = responsivefontSize * 0.8;
  double upperLimit = responsivefontSize * 1.2;
  return responsivefontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  /*we use the following if we build an app for tablet
   and mobile that we can't change dimension in real-time, so we don't need to rebuild the UI frequently*/

  // var dispatcher = PlatformDispatcher.instance;
  // var physicalwidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalwidth / devicePixelRatio;
  if (width < SizedConfig.tablet) {
    return width / 550;
  } else if (width < SizedConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1700;
  }
}
