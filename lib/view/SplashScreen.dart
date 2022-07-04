import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      Get.to(HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0473e1),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(children: [
              SizedBox(height: 283.5.h),
              Text("스미싱 모의훈련 서비스",
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "yspotlight",
                      fontStyle: FontStyle.normal,
                      fontSize: 19.sp),
                  textAlign: TextAlign.center),
              Text("피싱캣+",
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "yspotlight",
                      fontStyle: FontStyle.normal,
                      fontSize: 56.sp),
                  textAlign: TextAlign.center),
            ]),
          ),
        ));
  }
}
