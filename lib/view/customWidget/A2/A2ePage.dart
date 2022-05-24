// ignore_for_file: file_names

import 'dart:async';

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/AppContentsController.dart';
import 'package:voskat/controller/PairController.dart';
import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/controller/UserActionController.dart';
import 'package:voskat/model/simulation/appInfo.dart';
import 'package:get/get.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/view/Simulation/SimulationResultPage.dart';
import 'package:voskat/tempData/userActionData.dart';

class A2ePage extends StatefulWidget {
  String sid;
  String maliciousAppName;
  String maliciousAppIcon;
  String vaccineAppId;
  Color vaccineAppColor;

  A2ePage(
      {Key? key,
      required this.sid,
      required this.maliciousAppName,
      required this.maliciousAppIcon,
      required this.vaccineAppId,
      required this.vaccineAppColor})
      : super(key: key);

  @override
  _A2ePageState createState() => _A2ePageState();
}

class _A2ePageState extends State<A2ePage> with TickerProviderStateMixin {
  String appBarTitle = '';
  bool startClicked = false;
  bool inspectComplete = false;
  int percent = 0;

  late AnimationController animationController;

  final ScenarioController _scenarioController = ScenarioController();

  @override
  void initState() {
    // late Timer timer;

    // if (startClicked) {
    //   timer = Timer.periodic(Duration(milliseconds: 80), (_) {
    //     setState(() {
    //       percent += 1;
    //       if (percent >= 100) {
    //         timer.cancel();
    //         animationController.stop();
    //         // percent=0;
    //         startClicked = false;
    //         inspectComplete = true;
    //         appBarTitle = '악성 검사 결과';
    //       }
    //     });
    //   });
    // }

    ClassBuilder.register<SimulationResultPage>(() => SimulationResultPage(
          sid: widget.sid,
        ));

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // String maliciousAppName = widget.maliciousAppInfo.appName;
    late Timer timer;

    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle, style: TextStyle(fontSize: 19.sp)),
          centerTitle: true,
          leading: Container(
              padding: EdgeInsets.only(top: 8.h, bottom: 3.h),
              child: Image.asset(AppContentsController()
                  .getContentsWithType(widget.vaccineAppId, 'appIcon'))),
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
                              value: animationController.value,
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
                              child: Image.asset(widget.maliciousAppIcon)),
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
                                      child:
                                          Image.asset(widget.maliciousAppIcon)),
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
                                      child: Text(
                                          AppContentsController()
                                              .getContents('ac_103'),
                                          style: TextStyle(
                                              color: widget.vaccineAppColor,
                                              fontSize: 16.sp)),

                                      // U3-b
                                      onPressed: () {
                                        Scenario scenario = _scenarioController
                                            .getScenario(widget.sid);

                                        // A3-a
                                        Get.defaultDialog(
                                            title: '삭제 완료',
                                            middleText:
                                                '${widget.maliciousAppName}'
                                                ' 앱이 삭제되었습니다.');

                                        Timer(Duration(seconds: 2), () {
                                          print(
                                              'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget('ac_103'))}');

                                          Get.to(ClassBuilder.fromString(
                                              PairController()
                                                  .getNextActionWidget(
                                                      'ac_103')));

                                          scenario.userActionSequence.add(
                                              UserActionController()
                                                  .getUserAction(
                                                      PairController()
                                                          .getCurrentActionId(
                                                              'ac_103')));
                                        });
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
                                      child: Text(
                                          AppContentsController()
                                              .getContents('ac_104'),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.sp)),
                                      onPressed: () {
                                        // animationController.dispose();

                                        Scenario scenario = _scenarioController
                                            .getScenario(widget.sid);

                                        // scenario.userActionSequence.add(U3_c);

                                        print(
                                            'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget('ac_104'))}');

                                        Get.to(ClassBuilder.fromString(
                                            PairController()
                                                .getNextActionWidget('ac_104')));

                                        scenario.userActionSequence.add(
                                            UserActionController()
                                                .getUserAction(PairController()
                                                    .getCurrentActionId(
                                                        'ac_104')));
                                      },
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
                                  timer = Timer.periodic(
                                      Duration(milliseconds: 80), (_) {
                                    setState(() {
                                      percent += 1;
                                      if (percent >= 100) {
                                        timer.cancel();
                                        animationController.stop();
                                        // percent=0;
                                        startClicked = false;
                                        inspectComplete = true;
                                        appBarTitle = '악성 검사 결과';
                                      }
                                    });
                                  });
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
