// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/customWidget/A2/A2aPage.dart';
import 'package:voskat/customWidget/vaccineApp.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// TODO: UI 업데이트

class A1a_appPage extends StatefulWidget {
  String subtype;
  String appName;
  A1a_appPage({Key? key, required this.subtype, required this.appName})
      : super(key: key);

  @override
  _A1a_appPageState createState() => _A1a_appPageState();
}

class _A1a_appPageState extends State<A1a_appPage> {
  bool _showAd = false;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showAd = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String appName = widget.appName;

    String info1 = (widget.subtype == '대출사기') ? '고객명' : '';
    String info2 = (widget.subtype == '대출사기') ? '주민등록번호' : '';

    final info1Controller = TextEditingController();
    final info2_1Controller = TextEditingController();
    final info2_2Controller = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(appName),
        // leading: Container(),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.close),
        //     onPressed: () {
        //       bool isFilled = checkInfo(
        //           info1Controller, info2Controller, info3Controller);
        //     },
        //   )
        // ],
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.only(top: 60.h),
          child: Row(children: [
            Container(
              width: 110.w,
              padding: EdgeInsets.only(left: 20.h),
              child: Text(info1,
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600)),
            ),
            Container(
              width: 180.w,
              height: 40.h,
              padding: EdgeInsets.only(left: 20.w),
              child: TextField(
                  controller: info1Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(fontSize: 17.sp)),
            )
          ]),
        ),
        Container(
          padding: EdgeInsets.only(top: 30.h),
          child: Row(children: [
            Container(
              width: 110.w,
              padding: EdgeInsets.only(left: 20.w),
              child: Text(info2,
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600)),
            ),
            Container(
              width: 120.w,
              height: 40.h,
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                  controller: info2_1Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                  style: TextStyle(fontSize: 16, )),
            ),
            Container(child: Text(' - ', style: TextStyle(fontSize: 16))),
            Container(
              width: 100.w,
              height: 40.h,
              // padding: EdgeInsets.only(left: 20),
              child: TextField(
                obscureText: true,
                  controller: info2_2Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                  style: TextStyle(fontSize: 16.sp)),
            )
          ]),
        ),
        SizedBox(height: 40.h),

        // U2-a
        Container(
            width: 120,
            child: ElevatedButton(
              child: Text('조회하기'),
              onPressed: () {
                bool isFilled = checkInfo(
                    info1Controller, info2_1Controller, info2_2Controller);
                if (!isFilled) {
                  Get.showSnackbar(
                    GetSnackBar(
                      title: '조회 불가!',
                      message: '모든 정보를 입력하세요.',
                      duration: Duration(seconds: 2),
                      snackPosition: SnackPosition.BOTTOM,
                    ),
                  );
                } else {
                  Get.to(A2aPage(
                      subtype: widget.subtype,
                      appName: widget.appName,
                      info1: info1Controller.text,
                      info2_1: info2_1Controller.text,
                      info2_2: info2_2Controller.text));
                }
              },
            )),
        SizedBox(height: 200.h),
        _showAd ? vaccineApp() : Container(height: 90.h)
        // vaccineApp()
      ]),
    );
  }

  checkInfo(
    TextEditingController info1Controller,
    TextEditingController info2Controller,
    TextEditingController info3Controller,
  ) {
    bool isFilled = false;

    isFilled = ((info1Controller.text != '') &
        (info2Controller.text != '') &
        (info3Controller.text != ''));

    print('isFilled: $isFilled');
    return isFilled;
  }
}
