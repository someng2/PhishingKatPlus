// ignore_for_file: file_names
// <악성 앱 설치>

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/customWidget/A1/A1a_downloadSettingPage.dart';
import 'package:voskat/model/simulation/appInfo.dart';

class A1aPage extends StatefulWidget {
  String subtype;
  AppInfo appInfo;
  A1aPage({Key? key, required this.subtype, required this.appInfo})
      : super(key: key);

  @override
  _A1aPageState createState() => _A1aPageState();
}

class _A1aPageState extends State<A1aPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    String appName = widget.appInfo.appName;

    return Scaffold(
      body: Stack(children: [
        Positioned(
          child: AppBar(
            // TODO: leading -> 앱 icon image
            title: Text(appName),
            elevation: 5,
            backgroundColor: Colors.transparent,
          ),
        ),
        Container(
          width: 360.w,
          height: 760.h,
          color: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                  // width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   width: 1,
                      //   color: Colors.black,
                      // ),
                      borderRadius: BorderRadius.circular(20.sp)),
                  padding: EdgeInsets.only(
                      top: 20.h, bottom: 10.h, left: 20.w, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 30,
                            // height: 15,
                            child: Image.asset(widget.appInfo.appIcon),
                            // decoration: BoxDecoration(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            appName,
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Text('보안상의 이유로 이 경로를 통한 알 수 없는 앱을 휴대전화에 설치할 수 없습니다.',
                          style: TextStyle(fontSize: 13.sp)),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: TextButton(
                              child: Text(
                                '취소',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ),
                          Container(
                            child: TextButton(
                              child: Text(
                                '설정',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {
                                Get.to(
                                    A1a_downloadSettingPage(
                                        subtype: widget.subtype,
                                        appInfo: widget.appInfo),
                                    arguments: {'isSwitched': isSwitched});
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ]),
    );
  }
}
