// ignore_for_file: file_names
///A2-a

import 'dart:async';

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/controller/PairController.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/controller/UserActionController.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/view/customWidget/vaccineAppAd.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/view/Simulation/SimulationResultPage.dart';

import 'package:PhishingKatPlus/tempData/scenarioData.dart';

class MaliciousAppPage_2 extends StatefulWidget {
  String sid;
  String subtype;
  String maliciousAppName;
  String maliciousAppIcon;
  Color maliciousAppColor;
  int textFieldCount;
  String textField_ac_id;
  List<List<TextEditingController>> textControllerList;

  MaliciousAppPage_2({
    Key? key,
    required this.sid,
    required this.subtype,
    required this.maliciousAppName,
    required this.maliciousAppIcon,
    required this.maliciousAppColor,
    required this.textFieldCount,
    required this.textField_ac_id,
    required this.textControllerList,
  }) : super(key: key);

  @override
  State<MaliciousAppPage_2> createState() => _MaliciousAppPage_2State();
}

class _MaliciousAppPage_2State extends State<MaliciousAppPage_2> {
  bool _showAd = false;
  final ScenarioController _scenarioController = ScenarioController();

  /// 바뀔 수 있는 ac_id !
  String vaccineAppId = 'ac_7';

  @override
  void initState() {
    ClassBuilder.register<SimulationResultPage>(() => SimulationResultPage(
          sid: widget.sid,
        ));

    Timer(Duration(seconds: 3), () {
      setState(() {
        _showAd = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String appName = widget.maliciousAppName;
    Color appColor = widget.maliciousAppColor;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          automaticallyImplyLeading: false,
          elevation: 4,
          title: Text(appName,
              style: TextStyle(
                fontFamily: 'YDIYGO340',
                fontWeight: FontWeight.w500,
                fontSize: 19.sp,
              )),
          // leading: Container(),
          actions: [
            // U3-a
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                // scenario_A0a.userActionSequence.add(U3_a);

                // Scenario scenario = _scenarioController.getScenario(widget.sid);
                //
                // scenario.userActionSequence.add(U3_a);
                //
                // Get.to(SimulationResultPage(sid: widget.sid));

                print('PairController().getNextActionWidget(widget.sid, ac_106)) => ${PairController().getNextActionWidget(widget.sid, 'ac_106')}');
                print(
                    'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(widget.sid, 'ac_106'))}');

                Get.to(ClassBuilder.fromString(PairController()
                    .getNextActionWidget(widget.sid, 'ac_106')));

                Scenario scenario = _scenarioController.getScenario(widget.sid);

                scenario.userActionSequence.add(UserActionController()
                    .getUserAction(
                        PairController().getCurrentActionId('ac_106')));
              },
            )
          ],
        ),
        backgroundColor: appColor,
        body: Container(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child:

                        // (widget.subtype == '대출사기')
                        //     ?
                        Column(
                      children: [
                        MaliciousAppTemplate2(widget.sid,
                            widget.textField_ac_id, widget.textControllerList),
                      ],
                    ),
                  ),
                  _showAd
                      ? vaccineAppAd(
                          widget.sid,
                          widget.maliciousAppName,
                          widget.maliciousAppIcon,
                          vaccineAppId,
                        )
                      : Container(height: 90.h)
                ])));
  }
}

Widget MaliciousAppTemplate2(
  String sid,
  String textField_ac_id,
  List<List<TextEditingController>> textControllerList,
) {
  String subtype = ScenarioController().getSubtype(sid);
  // int rowIndex = AppContentsController()
  //     .getContentsOrderWithType(textField_ac_id, 'textfield_1_name');
  // print('rowIndex : $rowIndex');

  if (subtype == '대출') {
    return Container(
      height: 300.h,
      child: Column(
        children: [
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                textControllerList[AppContentsController()
                            .getContentsOrderWithType(
                                textField_ac_id, 'textfield_1_name') -
                        1][0]
                    .text,
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'YDIYGO340',
                ),
              ),
              Text(
                ' 님의 신청 가능한 대출 상품',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'YDIYGO340',
                ),
              ),
            ],
          )),
          Divider(
            thickness: 5,
            color: Colors.white.withOpacity(0.4),
            endIndent: 70.w,
          ),
          SizedBox(height: 50.h),
          Container(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Row(
                children: [
                  Text(
                    '상품명: [정부지원 대환대출]',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'YDIYGO340',
                    ),
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Row(
                children: [
                  Text(
                    '담당자: 김미영',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'YDIYGO340',
                    ),
                  ),
                ],
              )),
          Container(
              child: Row(
            children: [
              Text(
                '문의: 010-9931-1121',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'YDIYGO340',
                ),
              ),
            ],
          )),
        ],
      ),
    );
  } else {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                textControllerList[AppContentsController()
                            .getContentsOrderWithType(
                                textField_ac_id, 'textfield_1_name') -
                        1][0]
                    .text,
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
              ),
              Text(
                ' 님의 운송장 조회',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
            ],
          )),
          SizedBox(height: 50.h),
          Container(
              height: 100,
              child: Text('현재 위치 확인',
                  style: TextStyle(
                      color: Colors.indigo,
                      decoration: TextDecoration.underline,
                      fontSize: 14.sp))),
        ]);
  }
}
