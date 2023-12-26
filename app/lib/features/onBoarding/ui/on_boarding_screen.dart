import 'package:app/core/theming/styles.dart';
import 'package:app/features/onBoarding/widgets/doc_log_and_name.dart';
import 'package:app/features/onBoarding/widgets/doctor_image_and_text.dart';
import 'package:app/features/onBoarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          bottom: 30.h,
        ),
        child: Column(
          children: [
            DocLogAndName(),
            SizedBox(
              height: 30.h,
            ),
            DoctorImageAndText(),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              child: Column(
                children: [
                  Text(
                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    style: TextStyles.font13GreyNormal,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
