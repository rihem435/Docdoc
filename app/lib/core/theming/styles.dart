import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
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
    fontWeight: FontWeight.w600,
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
}
