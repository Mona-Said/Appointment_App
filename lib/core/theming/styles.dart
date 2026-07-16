import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/app_font_weights.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: AppFonts.bold,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font13GreySmall = TextStyle(
    color: AppColors.greyText,
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: AppFonts.semiBold,
    fontSize: 17.sp,
  );

  static TextStyle font24BlueBold = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 24.sp,
    fontWeight: AppFonts.bold,
  );

  static TextStyle font14GreyNormal = TextStyle(
    color: AppColors.greyText,
    fontSize: 14.sp,
    fontWeight: AppFonts.normal,
  );

  static TextStyle font14LightGrey2Medium = TextStyle(
    color: AppColors.lightGreyText2,
    fontSize: 14.sp,
    fontWeight: AppFonts.medium,
  );

  static TextStyle font12BlueNormal = TextStyle(
    color: AppColors.mainBlue,
    fontWeight: AppFonts.normal,
    fontSize: 12.sp,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    color: AppColors.darkBlue,
    fontWeight: AppFonts.medium,
    fontSize: 14.sp,
  );

  static TextStyle font11LightGreyNormal = TextStyle(
    color: AppColors.lightGreyText,
    fontWeight: AppFonts.normal,
    fontSize: 11.sp,
  );

  static TextStyle font11DarkBlueNormal = TextStyle(
    color: AppColors.darkBlue,
    fontWeight: AppFonts.medium,
    fontSize: 11.sp,
  );
  static TextStyle font11BlueNormal = TextStyle(
    color: AppColors.mainBlue,
    fontWeight: AppFonts.medium,
    fontSize: 11.sp,
  );
}
