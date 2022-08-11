// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/controller/AppPageController.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/controller/ScenrioTypeController.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';

import 'package:PhishingKatPlus/model/simulation/scenarioType.dart';
import 'package:PhishingKatPlus/tempData/scenarioTypeData.dart';
import 'package:PhishingKatPlus/controller/ScenrioTypeController.dart';
import 'package:PhishingKatPlus/view/Simulation/AcquaintanceImpersonationPage.dart';

import 'package:PhishingKatPlus/tempData/userData.dart';

import 'package:PhishingKatPlus/view/Simulation/SimulationPage.dart';
import 'package:class_builder/class_builder.dart';

class SimulationType extends StatefulWidget {
  SimulationType({
    Key? key,
  }) : super(key: key);

  @override
  _SimulationTypeState createState() => _SimulationTypeState();
}

class _SimulationTypeState extends State<SimulationType> {
  final ScenarioTypeController _scenarioTypeController =
      ScenarioTypeController();

  late Scenario _scenario;

  @override
  void initState() {
    super.initState();

    // TODO: paramter 추가
    ClassBuilder.register<SimulationPage>(() => SimulationPage(
          user: userList.last,
          scenario: _scenario,
        ));

    ClassBuilder.register<AcquaintanceImpersonationPage>(
        () => AcquaintanceImpersonationPage(
              sid: 'A0-h',
              aid: 'A1-i',
              messageList: ['ac_29', 'ac_30', 'A1-i'],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: TextButton(
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
          title: Text("유형별 모의체험",
              style: const TextStyle(
                  color: const Color(0xff0b80f5),
                  fontWeight: FontWeight.w400,
                  fontFamily: "YDIYGO320",
                  fontStyle: FontStyle.normal,
                  fontSize: 17.0),
              textAlign: TextAlign.center),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: const Color(0xffeaf5ff)),
      body: SingleChildScrollView(
        child: Stack(
          children: [Column(
            children: [
              SizedBox(height: 29.5.h),
              Container(
                child: Column(children: [
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20.w),
                      sType(_scenarioTypeController.getScenarioType('대출')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('게임')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('택배')),
                      SizedBox(width: 18.w)
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20.w),
                      sType(_scenarioTypeController.getScenarioType('가족')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('아르바이트')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('취업')),
                      SizedBox(width: 18.w)
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20.w),
                      sType(_scenarioTypeController.getScenarioType('중고거래')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('이성교제')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('지원금')),
                      SizedBox(width: 18.w)
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20.w),
                      sType(_scenarioTypeController.getScenarioType('주식')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('쇼핑')),
                      SizedBox(width: 35.w),
                      sType(_scenarioTypeController.getScenarioType('보험')),
                      SizedBox(width: 18.w)
                    ],
                  ),
                ]),
              ),
              SizedBox(height: 29.5.h),
            ],
          )],
        ),
      ),
    );
  }

  sType(ScenarioType subtype) {
    bool isLocked = subtype.lock;
    int medal = subtype.medal;

    return Column(children: [
      SizedBox(
          width: 84,
          height: 83,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: <Widget>[
              CircularProgressIndicator(
                strokeWidth: 5,
                //score 진행도
                value: isLocked ? 0 : (subtype.score / 100),
                backgroundColor: Color(0xffe7e7e7),
                color: Color(0xff6fb7fd),
              ),
              Center(
                child: TextButton(
                  child: Container(
                    width: 51.w,
                    height: 51.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: isLocked
                                ? AssetImage(subtype.icon_disactive)
                                : AssetImage(subtype.icon_active))),
                  ),
                  onPressed: () {
                    // isLocked
                    //     ? SizedBox.shrink()
                    //     : _scenario =
                    //         ScenarioController().getScenario(subtype.sid);
                    // Get.to(ClassBuilder.fromString(
                    //     AppPageController().getWidget(subtype.aid)));

                    if (isLocked) {
                      SizedBox.shrink();
                    }
                    else {
                      _scenario =
                          ScenarioController().getScenario(subtype.sid);
                      Get.to(ClassBuilder.fromString(
                          AppPageController().getWidget(subtype.aid)));
                    }
                  },
//                         ? Get.to(SimulationPage(user: user1))
//                         : Container();

                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                right: 28,
                child: TextButton(
                  child: isLocked
                      ? SizedBox.shrink()
                      : Container(
                          width: 27.w,
                          height: 29.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                _scenarioTypeController.getMedalImage(medal)),
                          )),
                        ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: TextButton(
                  child: isLocked
                      ? Container(
                          width: 22.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('image/Lock.png'),
                          )),
                        )
                      : SizedBox.shrink(),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
            ],
          )),
      SizedBox(
        height: 6.h,
      ),
      Text(
        subtype.subtype,
        style: const TextStyle(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w400,
            fontFamily: "AppleSDGothicNeoB00",
            fontStyle: FontStyle.normal,
            fontSize: 12.0),
      ),
    ]);
  }
}
