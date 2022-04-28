// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/customWidget/A1/A1a_downloadPage.dart';
import 'package:voskat/view/customWidget/A1/A1aPage.dart';
import 'package:voskat/model/simulation/appInfo.dart';

class A1a_downloadSettingPage extends StatefulWidget {
  String sid;
  AppInfo appInfo;
  String subtype;
  A1a_downloadSettingPage(
      {Key? key,
      required this.sid,
      required this.appInfo,
      required this.subtype})
      : super(key: key);

  @override
  _A1a_downloadSettingPageState createState() =>
      _A1a_downloadSettingPageState();
}

class _A1a_downloadSettingPageState extends State<A1a_downloadSettingPage> {
  bool isSwitched = Get.arguments['isSwitched'];

  @override
  Widget build(BuildContext context) {
    // String appName = Get.arguments['appName'];
    // String subtype = Get.arguments['subtype'];
    // bool isSwitched = widget.isSwitched;
    String appName = widget.appInfo.appName;
    String subtype = widget.subtype;

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            title:
                Text('출처를 알 수 없는 앱 설치', style: TextStyle(color: Colors.black)),
            leading: TextButton(
              child: Icon(
                Icons.navigate_before,
                color: Colors.black,
              ),
              onPressed: () {
                (isSwitched)
                    ? Get.to(A1a_downloadPage( sid: widget.sid,
                        subtype: subtype, appInfo: widget.appInfo))
                    // arguments: {'subtype': widget.subtype, 'appName': widget.appName})
                    : Get.back();
              },
            ),
            backgroundColor: Colors.white.withOpacity(0.05)),
        backgroundColor: Colors.white.withOpacity(0.95),
        body: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  height: 50.h,
                  child: Row(children: [
                    // TODO: 앱 아이콘으로 변경
                    Container(
                        width: 30.w,
                        child: Image.asset(widget.appInfo.appIcon)),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(appName,
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        Text('2.0.1',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black.withOpacity(0.6)))
                      ],
                    )
                  ])),
              SizedBox(height: 10.h),
              Container(
                  padding: EdgeInsets.only(
                      left: 20.w, top: 10.h, bottom: 10.h, right: 10.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.sp)),
                  height: 45.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '이 출처 허용',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.sp),
                      ),
                      // Switch(
                      //   value: isSwitched,
                      //   onChanged: (value) {
                      //     setState(() {
                      //       isSwitched = value;
                      //     });
                      //   },
                      //   // activeTrackColor: Colors.lightGreenAccent,
                      //   // activeColor: prim,
                      // )
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            // print('isSwitched : $isSwitched');
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  top: 20.h,
                ),
                child: Row(
                  children: [
                    Text(
                      '이 출처의 앱을 설치하면 휴대전화와 데이터가 손상될 수 있습니다.',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
