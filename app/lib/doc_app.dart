// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:app/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  AppRouter appRouter;

  DocApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //size app
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc App",
        theme: ThemeData(
          primaryColor: AppColors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
