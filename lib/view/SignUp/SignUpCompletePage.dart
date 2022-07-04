import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:get/get.dart';

import 'package:voskat/view/HomePage.dart';

class SignUpCompletePage extends StatefulWidget {
  const SignUpCompletePage({Key? key}) : super(key: key);

  @override
  State<SignUpCompletePage> createState() => _SignUpCompletePageState();
}

class _SignUpCompletePageState extends State<SignUpCompletePage> {
  late Timer _timer;
  // var time = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // 3초 후 홈화면으로 이동
    _timer = Timer(Duration(seconds: 3), () {
      // time++;
      // print('time: $time');
      print('Time off!');

      Get.off(HomePage());
      _timer.cancel();
    });

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 86.8.h,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 32.5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "당신과,\n당신의 소중한 이웃들이\n피싱으로부터 안전할 수 있게",
                    style: TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 21.sp),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "피싱캣플러스는 모두가 안심하고\n소통할 수 있는 세상을 만듭니다",
                    style: TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 23.h),
          ],
        ),
        Container(
          width: 360.w,
          height: 489.2.h,
          child: Image.asset('image/signUpComplete.png', fit: BoxFit.fill),
        )
      ],
    ));
  }
}
