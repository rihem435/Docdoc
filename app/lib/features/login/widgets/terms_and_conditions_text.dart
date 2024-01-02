import 'package:app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.font11Grey62Meduim,
          ),
          TextSpan(
              text: "Terms & Conditions ",
              style: TextStyles.font11EerieBlackMeduim),
          TextSpan(
            text: "and ",
            style: TextStyles.font11Grey62Meduim.copyWith(height: 1.5.h),
          ),
          TextSpan(
              text: "PrivacyPolicy.", style: TextStyles.font11EerieBlackMeduim),
        ]));
  }
}
