// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget SignUpTextField(double _width, double _height,
    TextEditingController _textController, String _hintText) {
  return Container(
      width: _width,
      height: _height,
      child: TextField(
        controller: _textController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: TextStyle(
              color: const Color(0xffb1aeae),
              fontWeight: FontWeight.w400,
              fontFamily: "NotoSansCJKKR",
              fontStyle: FontStyle.normal,
              fontSize: 16.sp),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.sp)),
            borderSide: BorderSide(
                width: 1.5.sp, color: Color(0xff0b80f5)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.sp)),
            borderSide: BorderSide(
                width: 1.5.sp, color: Color(0xff0b80f5)),
          ),
        ),
      ));
}
