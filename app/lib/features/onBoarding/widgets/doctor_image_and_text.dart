import 'package:app/core/constants/app_images_svgs.dart';
import 'package:app/core/theming/app_colors.dart';
import 'package:app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          Assets.imagesSvgsDocdocLogoLowOpacity,
          // color: AppColors.blue.withOpacity(0.5)
        ),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withOpacity(0.0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4])),
          child: Image.asset(
            Assets.imagesOnboardingDoctor,
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 30.h,
            child: Text(
              "Best Doctor Appointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4.h),
            )),
      ],
    );
  }
}
