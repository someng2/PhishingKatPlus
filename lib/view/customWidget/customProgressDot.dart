import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomProgressDot(bool isFirstPage) {
  return  Container(
    height: 8.h,
    width: 360.w,
    padding: EdgeInsets.only(left: 321.w),
    child: Row(
      children: [
        Container(
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff0473e1)),
        ),
        SizedBox(width: 3.w),
        Container(
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isFirstPage ?  Color(0xffe4e4e4) : Color(0xff0473e1)),
        ),
      ],
    ),
  );
}