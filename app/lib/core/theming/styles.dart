import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blue,
  );
  static TextStyle font13GreyNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.blue,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.grey,
  );
  static TextStyle font14LightGreyMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGrey,
  );
  static TextStyle font14EerieBlackMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.eerieBlack,
  );
  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.blue,
  );
  static TextStyle font11BlackSemiBold = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.eerieBlack);
  static TextStyle font11CyanBlueSemiBold = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.cyanBlue);
  static TextStyle font11Grey62Meduim = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.grey62);
  static TextStyle font11EerieBlackMeduim = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.eerieBlack);
}
