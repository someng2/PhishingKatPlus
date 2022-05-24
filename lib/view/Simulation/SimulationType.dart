// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/controller/ScenrioTypeController.dart';

import 'package:voskat/model/simulation/scenarioType.dart';
import 'package:voskat/tempData/scenarioTypeData.dart';
import 'package:voskat/controller/ScenrioTypeController.dart';
import 'package:voskat/tempData/userData.dart';

import 'package:voskat/view/Simulation/SimulationPage.dart';
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
      body: Column(
        children: [
          SizedBox(height: 29.5.h),
          Container(
            child: Row(
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
          ),
          SizedBox(height: 29.5.h),
        ],
      ),
    );
  }

  sType(ScenarioType type) {
    bool isLocked = type.lock;

    return Column(children: [
      SizedBox(
          width: 84,
          height: 83,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              CircularProgressIndicator(
                strokeWidth: 5,
                //score 진행도
                value: (type.score / 100),
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
                                ? AssetImage(type.icon_active)
                                : AssetImage(type.icon_disactive))),
                  ),
                  onPressed: () {
                    isLocked ? Get.to(SimulationPage(user: user1)) : Container();
                  },
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
        type.type,
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
