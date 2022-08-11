// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:PhishingKatPlus/view/customWidget/A1/MaliciousAppPage_1.dart';
import 'package:PhishingKatPlus/model/simulation/appInfo.dart';

class A1a_downloadPage extends StatefulWidget {
  String sid;
  String subtype;
  String maliciousAppName;
  String maliciousAppIcon;
  A1a_downloadPage(
      {Key? key,
      required this.sid,
      required this.subtype,
      required this.maliciousAppName,
      required this.maliciousAppIcon})
      : super(key: key);

  @override
  _A1a_downloadPageState createState() => _A1a_downloadPageState();
}

class _A1a_downloadPageState extends State<A1a_downloadPage> {
  // String subtype = Get.arguments['subtype'];
  // String appName = Get.arguments['appName'];

  // double percent = 0.0;
  late Timer timer;
  String state = '설치 중...';

  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 1900), (_) {
      setState(() {
        state = '설치 완료!';
        timer.cancel();
        Get.to(MaliciousAppPage_1(
          sid: widget.sid,
          subtype: widget.subtype,
          maliciousAppName: widget.maliciousAppName,
          maliciousAppIcon: widget.maliciousAppIcon,
          // TODO: widget.maliciousAppColor로 바꾸기
          maliciousAppColor: Color(0xffFFD117),
        ));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String subtype = widget.subtype;
    String appName = widget.maliciousAppName;
    String appIcon = widget.maliciousAppIcon;

    return Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Container(height: 30.h, child: Image.asset(appIcon)),
              SizedBox(width: 25.w),
              Text(appName),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 230.h),
          child: Column(children: [
            //   LinearPercentIndicator( //leaner progress bar
            //   animation: true,
            //   animationDuration: 100,
            //   lineHeight: 20.0,
            //   percent:percent/100,
            //   center: Text(
            //     percent.toString() + "%",
            //     style: TextStyle(
            //         fontSize: 12.0,
            //         fontWeight: FontWeight.w600,
            //         color: Colors.black),
            //   ),
            //   linearStrokeCap: LinearStrokeCap.roundAll,
            //   progressColor: Colors.blue[400],
            //   backgroundColor: Colors.grey[300],
            // ),
            Container(
              child: Icon(
                Icons.download_sharp,
                size: 70.sp,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearPercentIndicator(
                  width: 330.w,
                  animation: true,
                  lineHeight: 8.h,
                  animationDuration: 1900,
                  percent: 1.0,
                  // linearStrokeCap: LinearStrokeCap.roundAll,
                  // barRadius: Radius.circular(5),
                  progressColor: Colors.teal,
                ),
              ],
            ),
            Container(padding: EdgeInsets.only(top: 10.h), child: Text(state))
          ]),
        ));
  }
}
