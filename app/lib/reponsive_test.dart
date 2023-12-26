import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReponsiveTest extends StatelessWidget {
  const ReponsiveTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
              home: Scaffold(
            appBar: AppBar(
              title: Text("ssssssssssssssssssss"),
            ),
            body: Column(
              children: [
                Container(
                    //  width: 200.w,
                    // height: 200.h,
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.amber,
                    child: Text(
                      "hello word",
                      style: TextStyle(fontSize: 40.sp),
                    )),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 12,
                ),
                Container(
                    width: 200.w,
                    height: 200.h,
                    // width: MediaQuery.of(context).size.width / 2,
                    // height: MediaQuery.of(context).size.height / 2,
                    color: Colors.redAccent,
                    child: Text(
                      "hello word",
                      style: TextStyle(fontSize: 40.sp),
                    ))
              ],
            ),
          ));
        });
  }
}
