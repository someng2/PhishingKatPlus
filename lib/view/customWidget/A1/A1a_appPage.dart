// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/userActionData.dart';
import 'package:voskat/view/customWidget/A2/A2aPage.dart';
import 'package:voskat/view/customWidget/vaccineAppAd.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/model/simulation/appInfo.dart';
import 'package:voskat/tempData/scenarioData.dart';
import 'package:voskat/controller/ScenarioController.dart';

// TODO: UI 업데이트

class A1a_appPage extends StatefulWidget {
  String sid;
  String subtype;
  AppInfo appInfo;
  A1a_appPage(
      {Key? key,
      required this.sid,
      required this.subtype,
      required this.appInfo})
      : super(key: key);

  @override
  _A1a_appPageState createState() => _A1a_appPageState();
}

class _A1a_appPageState extends State<A1a_appPage> {
  bool _showAd = false;
  final ScenarioController _scenarioController = ScenarioController();

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
    // print('widget.sid: ${widget.sid}');
    String appName = widget.appInfo.appName;
    String info1 = '';
    String info2 = '';

    if (widget.subtype == '대출사기') {
      info1 = '고객명';
      info2 = '주민등록번호';
    } else if (widget.subtype == '택배사칭') {
      info1 = '이름';
      info2 = '휴대폰 번호';
    }

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
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600)),
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
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600)),
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
                  style: TextStyle(
                    fontSize: 16,
                  )),
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
                String errorType = checkInfo(
                    info1Controller, info2_1Controller, info2_2Controller);
                if (errorType == '정보부족') {
                  Get.showSnackbar(
                    GetSnackBar(
                      title: '조회 불가!',
                      message: '모든 정보를 입력하세요.',
                      duration: Duration(seconds: 2),
                      snackPosition: SnackPosition.BOTTOM,
                    ),
                  );
                } else if (errorType == '주민번호형식오류') {
                  Get.showSnackbar(
                    GetSnackBar(
                      title: '주민등록번호 오류!',
                      message: '앞자리 6자리, 뒷자리 7자리를 모두 입력해주세요.',
                      duration: Duration(seconds: 2),
                      snackPosition: SnackPosition.BOTTOM,
                    ),
                  );
                } else {

                  Scenario scenario =
                      _scenarioController.getScenario(widget.sid);

                  scenario.userActionSequence.add(U2_a);

                  // Get.to(() => A2aPage(
                  //     sid: widget.sid,
                  //     subtype: widget.subtype,
                  //     appInfo: widget.appInfo,
                  //     info1: info1Controller.text,
                  //     info2_1: info2_1Controller.text,
                  //     info2_2: info2_2Controller.text));

                  // Get.to(U2_a.nextAction);
                }
              },
            )),
        SizedBox(height: 200.h),
        _showAd ? vaccineAppAd(widget.sid, widget.appInfo) : Container(height: 90.h)
        // vaccineApp()
      ]),
    );
  }

  checkInfo(
    TextEditingController info1Controller,
    TextEditingController info2Controller,
    TextEditingController info3Controller,
  ) {
    String errorType = '';

    if ((info1Controller.text == '') |
        (info2Controller.text == '') |
        (info3Controller.text == '')) {
      errorType = '정보부족';
    } else if ((info1Controller.text != '') &
        ((info2Controller.text.length != 6) |
            (info3Controller.text.length != 7))) {
      errorType = '주민번호형식오류';
    } else
      errorType = '에러없음';

    print('errorType: $errorType');
    return errorType;
  }
}
