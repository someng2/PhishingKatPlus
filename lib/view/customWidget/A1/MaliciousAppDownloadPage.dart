// ignore_for_file: file_names
/// A1-a

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/customWidget/A1/A1a_downloadSettingPage.dart';

class MaliciousAppDownloadPage extends StatefulWidget {
  String sid;
  String subtype;
  String maliciousAppName;
  String maliciousAppIcon;
  MaliciousAppDownloadPage(
      {Key? key,
      required this.sid,
      required this.subtype,
      required this.maliciousAppName,
      required this.maliciousAppIcon})
      : super(key: key);

  @override
  _MaliciousAppDownloadPageState createState() =>
      _MaliciousAppDownloadPageState();
}

class _MaliciousAppDownloadPageState extends State<MaliciousAppDownloadPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    String appName = widget.maliciousAppName;
    String appIcon = widget.maliciousAppIcon;

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
                            width: 30.w,
                            // height: 15,
                            child: Image.asset(appIcon, width: 30.w),

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
                                // Get.back();
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
                                      sid: widget.sid,
                                      subtype: widget.subtype,
                                      maliciousAppIcon: appIcon,
                                      maliciousAppName: appName,
                                    ),
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
