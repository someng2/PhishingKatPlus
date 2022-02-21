// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget vaccineApp() {
  return Container(
      width: 360.w,
      height: 90.h,
      // padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10.0, // soften the shadow
            // spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.topLeft,
              width: 360.w,
              height: 90.h,
              // width: 400,
              child: TextButton(
                  onPressed: () {
                    print('button pushed');
                  },
                  // TODO: 기존에 없는 백신 프로그램 앱으로 이미지 & 이름 설정
                  child: Container(
                    height: 90.h,
                    child: Row(
                      children: [
                        Container(
                            width: 55.w,
                            child: Image.asset('image/v3appLogo.webp')),
                        Container(
                          padding: EdgeInsets.only(left: 15.w, top: 7.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '글로벌 안드로이드 백신 No.1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'AhnLab V3 Mobile Security',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )))
        ],
      ));
}
