// ignore_for_file: file_names
/// A1-s

import 'dart:async';

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/controller/PairController.dart';
import 'package:PhishingKatPlus/controller/UserActionController.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/view/customWidget/A2/MaliciousAppPage_2.dart';
import 'package:PhishingKatPlus/view/customWidget/vaccineAppAd.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:PhishingKatPlus/tempData/userActionData.dart';
import 'package:PhishingKatPlus/tempData/scenarioData.dart';

// TODO: UI 업데이트

class MaliciousAppPage_1 extends StatefulWidget {
  String sid;
  String subtype;
  String maliciousAppName;
  String maliciousAppIcon;
  Color maliciousAppColor;
  MaliciousAppPage_1(
      {Key? key,
      required this.sid,
      required this.subtype,
      required this.maliciousAppName,
      required this.maliciousAppIcon,
        required this.maliciousAppColor,
      })
      : super(key: key);

  @override
  _MaliciousAppPage_1State createState() => _MaliciousAppPage_1State();
}

class _MaliciousAppPage_1State extends State<MaliciousAppPage_1> {
  bool _showAd = false;
  final ScenarioController _scenarioController = ScenarioController();
  final TextEditingController info1Controller = TextEditingController();
  final TextEditingController info2_1Controller = TextEditingController();
  final TextEditingController info2_2Controller = TextEditingController();

  List<List<TextEditingController>> textControllerList = [[]];
  String textField_ac_id = 'ac_100';
  int textFieldCount = 0;

  @override
  void initState() {
    ClassBuilder.register<MaliciousAppPage_2>(() => MaliciousAppPage_2(
          sid: widget.sid,
          subtype: widget.subtype,
          maliciousAppName: widget.maliciousAppName,
          maliciousAppIcon: widget.maliciousAppIcon,
          maliciousAppColor: widget.maliciousAppColor,
          textFieldCount: textFieldCount,
          textField_ac_id: textField_ac_id,
          textControllerList: textControllerList,
        ));

    Timer(Duration(seconds: 3), () {
      setState(() {
        _showAd = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    setState(() {
      _showAd = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('widget.sid: ${widget.sid}');

    String appName = widget.maliciousAppName;
    Color appColor = widget.maliciousAppColor;

    // column 별 text editing controller 저장하는 2차원 배열

    List<int> textControllerCount = [];

    // sid, ac_id 로  c_type 이 'textfield' 인 appContents 개수 구하기
    textFieldCount = AppContentsController()
        .getContentsCount(widget.sid, textField_ac_id, 'textfield');
    print('textfield_count : $textFieldCount');

    // 개수만큼 String info, TextEditingController 선언,
    // getContentsWithOrder 로 info 가져오기
    for (int i = 1; i <= textFieldCount; i++) {
      String c_type = AppContentsController()
          .getContentsWithOrder(widget.sid, textField_ac_id, i)
          .c_type;
      // String info = AppContentsController()
      //     .getContentsWithOrder(widget.sid, textfield_ac_id, i)
      //     .contents;
      // infoList.add(info);
      // print('added to infoList');
      print('c_type : $c_type');

      if (c_type.contains('textfield_1')) {
        List<TextEditingController> controllerList = [];
        print('----textfield_1');
        TextEditingController info1Controller = TextEditingController();
        controllerList.add(info1Controller);
        textControllerList.add(controllerList);
        textControllerList[i - 1] = controllerList;

        print('added to textControllerList -1');
        print('controllerList.length = ${controllerList.length}');
        textControllerCount.add(1);
      } else if (c_type.contains('textfield_2')) {
        print('-----textfield_2');
        List<TextEditingController> controllerList = [];
        for (int j = 0; j < 2; j++) {
          TextEditingController infoController = TextEditingController();
          controllerList.add(infoController);
          // print('added to textControllerList - 2 -> $j');
          textControllerCount.add(2);
        }
        print('controllerList.length = ${controllerList.length}');
        textControllerList.add(controllerList);
        textControllerList[i - 1] = controllerList;
      } else if (c_type.contains('textfield_3')) {
        print('-----textfield_3');
        List<TextEditingController> controllerList = [];
        for (int j = 0; j < 3; j++) {
          TextEditingController infoController = TextEditingController();
          controllerList.add(infoController);
          print('added to textControllerList -3 -> $j');
          textControllerCount.add(3);
        }
        print('controllerList.length = ${controllerList.length}');
        textControllerList.add(controllerList);
        textControllerList[i - 1] = controllerList;
      }
    }

    return Scaffold(
      backgroundColor: appColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          AppContentsController().getContentsWithSidNType(widget.sid, 'title'),
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19.sp,
              fontFamily: 'YDIYGO340'),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: appColor,
        automaticallyImplyLeading: false,
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        MaliciousAppTemplate(widget.sid, appColor, textFieldCount,
            textField_ac_id, textControllerList),
        SizedBox(height: 40.h),

        // U2-a
        Container(
            width: 120.w,
            height: 50.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                AppContentsController().getContents('ac_101'),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                String errorType =
                    checkInfo(widget.sid, textFieldCount, textControllerList);
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
                  print(
                      'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(widget.sid, 'ac_101'))}');

                  Get.to(ClassBuilder.fromString(PairController()
                      .getNextActionWidget(widget.sid, 'ac_101')));

                  Scenario scenario =
                      _scenarioController.getScenario(widget.sid);

                  scenario.userActionSequence.add(UserActionController()
                      .getUserAction(
                          PairController().getCurrentActionId('ac_101')));
                }
              },
            )),
        SizedBox(height: 17.h),
        _showAd
            ? vaccineAppAd(widget.sid, widget.maliciousAppName,
                widget.maliciousAppIcon, 'ac_7')
            : Container(height: 90.h)
        // vaccineApp()
      ]),
    );
  }

  checkInfo(
      String sid,
      int textFieldCount,
      // String textField_ac_id,
      List<List<TextEditingController>> textControllerList) {
    String errorType = '에러없음';
    String subtype = ScenarioController().getSubtype(sid);

    for (int i = 0; i < textFieldCount; i++) {
      for (int j = 0; j < textControllerList[i].length; j++) {
        if (textControllerList[i][j].text == '') errorType = '정보부족';
      }
    }

    print('errorType: $errorType');
    return errorType;
  }
}

Widget MaliciousAppTemplate(
    String sid,
    Color appColor,
    int textFieldCount,
    String textField_ac_id,
    List<List<TextEditingController>> textControllerList) {
  // for (int i = 0; i < textFieldCount; i++)
  //   print(
  //       'MaliciousAppTemplate - textControllerList[$i].length : ${textControllerList[i].length}');
  return Column(children: [
    for (int i = 0; i < textFieldCount; i++)
      _maliciousAppTemplate(
        sid,
        AppContentsController()
            .getContentsWithOrder(sid, textField_ac_id, i + 1)
            .contents,
        appColor,
        textField_ac_id,
        textControllerList[i],
      ),
  ]);
}

Widget _maliciousAppTemplate(
    String sid,
    String info,
    Color appColor,
    String textField_ac_id,
    List<TextEditingController> textFieldControllerList) {
  // print('textFieldControllerList.length : ${textFieldControllerList.length}');

  return Container(
    padding: EdgeInsets.only(top: 60.h),
    child: Row(children: [
      Container(
        width: 110.w,
        padding: EdgeInsets.only(left: 20.h),
        child: Text(info,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600)),
      ),
      (textFieldControllerList.length == 1)
          ? Container(
              width: 190.w,
              height: 45.h,
              padding: EdgeInsets.only(left: 20.w),
              child: TextField(
                  cursorColor: appColor,
                  controller: textFieldControllerList[0],
                  decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.5),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(fontSize: 17.sp)),
            )
          : (textFieldControllerList.length == 2)
              ? Row(
                  children: [
                    Container(
                      width: 110.w,
                      height: 45.h,
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                          controller: textFieldControllerList[0],
                          decoration: InputDecoration(
                            fillColor: Colors.white.withOpacity(0.5),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 3)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          ),
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    Container(
                        child: Text(' - ',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w700))),
                    Container(
                      width: 100.w,
                      height: 45.h,
                      // padding: EdgeInsets.only(left: 20),
                      child: TextField(
                          // obscureText: true,
                          controller: textFieldControllerList[1],
                          decoration: InputDecoration(
                            fillColor: Colors.white.withOpacity(0.5),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 3)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          ),
                          style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                )
              : (textFieldControllerList.length == 3)
                  ? Row(
                      children: [
                        Container(
                          width: 75.w,
                          height: 45.h,
                          padding: EdgeInsets.only(left: 20),
                          child: TextField(
                              controller: textFieldControllerList[0],
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.5),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 0),
                              ),
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ),
                        Container(
                            child: Text(' - ',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700))),
                        Container(
                          width: 70.w,
                          height: 45.h,
                          // padding: EdgeInsets.only(left: 20),
                          child: TextField(
                              // obscureText: true,
                              controller: textFieldControllerList[1],
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.5),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 0),
                              ),
                              style: TextStyle(fontSize: 16.sp)),
                        ),
                        Container(
                            child: Text(' - ',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700))),
                        Container(
                          width: 70.w,
                          height: 45.h,
                          // padding: EdgeInsets.only(left: 20),
                          child: TextField(
                              // obscureText: true,
                              controller: textFieldControllerList[2],
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.5),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 3)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 0),
                              ),
                              style: TextStyle(fontSize: 16.sp)),
                        )
                      ],
                    )
                  : Container(),
    ]),
  );
}
