import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  AppTextFormField(
      {Key? key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          //uses less vertical space
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 18.h,
              ),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: AppColors.blue,
                  width: 1,
                ),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: AppColors.veryLightGrey,
                  width: 1,
                ),
              ),
          hintStyle: hintStyle ?? TextStyles.font14EerieBlackMedium,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? AppColors.moreLightGrey,
          filled: true),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14EerieBlackMedium,
    );
  }
}
