// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/model/simulation/appInfo.dart';
import 'package:get/get.dart';
import 'package:voskat/view/Simulation/SimulationResultPage.dart';

class A2b_vaccineAppPage extends StatefulWidget {
  AppInfo maliciousAppInfo;
  String vaccineAppIcon;
  Color vaccineAppColor;

  A2b_vaccineAppPage(
      {Key? key,
      required this.maliciousAppInfo,
      required this.vaccineAppIcon,
      required this.vaccineAppColor})
      : super(key: key);

  @override
  _A2b_vaccineAppPageState createState() => _A2b_vaccineAppPageState();
}

class _A2b_vaccineAppPageState extends State<A2b_vaccineAppPage>
    with TickerProviderStateMixin {
  String appBarTitle = '';
  bool startClicked = false;
  bool inspectComplete = false;
  int percent = 0;

  late AnimationController controller;

  @override
  void initState() {
    late Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 80), (_) {
      setState(() {
        percent += 1;
        if (percent >= 100) {
          timer.cancel();
          controller.stop();
          // percent=0;
          startClicked = false;
          inspectComplete = true;
          appBarTitle = '악성 검사 결과';
        }
      });
    });

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String maliciousAppName = widget.maliciousAppInfo.appName;

    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle, style: TextStyle(fontSize: 19.sp)),
          centerTitle: true,
          leading: Container(
              padding: EdgeInsets.only(top: 8.h, bottom: 3.h),
              child: Image.asset(widget.vaccineAppIcon)),
          elevation: 0,
        ),
        // backgroundColor: Colors.blue,
        body: (startClicked || inspectComplete)
            ? startClicked
                ? Container(
                    width: 360.w,
                    padding: EdgeInsets.only(top: 150.h, bottom: 100.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // progress circle
                        Container(
                          height: 170.sp,
                          width: 170.sp,
                          child: CircularProgressIndicator(
                              value: controller.value,
                              // semanticsLabel: 'Linear progress indicator',
                              strokeWidth: 6.w,
                              color: widget.vaccineAppColor),
                        ),

                        Column(
                          children: [
                            // progress percent
                            Text('$percent%',
                                style: TextStyle(fontSize: 30.sp)),

                            Text('악성 앱 검사 중...'),
                          ],
                        )
                      ],
                    ))
                : Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 50.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 80.h,
                              child: Image.asset('image/cautionIcon.png')),
                          Container(
                              padding: EdgeInsets.only(bottom: 30.h),
                              child: Text('악성 앱 1개 발견',
                                  style: TextStyle(fontSize: 20.sp))),
                          Container(
                              height: 150.h,
                              width: 150.h,
                              color: Colors.black,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text('악성 앱 아이콘 바꾸기',
                                      style: TextStyle(color: Colors.white)),
                                  Container(
                                      height: 125.h,
                                      child: Image.asset(
                                          widget.maliciousAppInfo.appIcon)),
                                ],
                              )),
                          Container(
                              padding:
                                  EdgeInsets.only(top: 120.h, bottom: 20.h),
                              child: Text(
                                '삭제 하시겠습니까?',
                                style: TextStyle(fontSize: 16.sp),
                              )),
                          Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Container(
                                    width: 120.w,
                                    height: 43.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: widget.vaccineAppColor),
                                        borderRadius:
                                            BorderRadius.circular(10.sp)),
                                    child: TextButton(
                                      child: Text('삭제',
                                          style: TextStyle(
                                              color: widget.vaccineAppColor,
                                              fontSize: 16.sp)),
                                      onPressed: () {
                                        Get.defaultDialog(
                                            title: '삭제 완료',
                                            middleText:
                                                '$maliciousAppName 앱이 삭제되었습니다.');

                                        // TODO: sid 넣기
                                        Get.offAll(SimulationResultPage(sid: ''));
                                      },
                                    )),
                                SizedBox(width: 20.w),
                                Container(
                                    width: 120.w,
                                    height: 43.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.sp)),
                                    child: TextButton(
                                      child: Text('취소',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.sp)),
                                      onPressed: () {},
                                    )),
                              ]))
                        ]),
                  )
            // 검사 전
            : Container(
                width: 360.w,
                padding: EdgeInsets.only(top: 150.h),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 270.h,
                          width: 270.w,
                          decoration: new BoxDecoration(
                            color: widget.vaccineAppColor,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            width: 250.w,
                            height: 250.h,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  startClicked = true;
                                  appBarTitle = '악성 검사 실행';
                                });
                              },
                              child: Text('검사하기',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.sp)),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.white, //<-- Button color
                                onPrimary: Colors.blue
                                    .withOpacity(0.8), // <-- Splash color
                              ),
                            ),
                          )),
                    ]),
              ));
  }
}
