// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/controller/PairController.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/controller/UserActionController.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/tempData/userActionData.dart';
import 'package:PhishingKatPlus/view/customWidget/A2/PlayStorePage.dart';

Widget vaccineAppAd(String sid, String maliciousAppName,
    String maliciousAppIcon, String vaccineAppId) {
  ClassBuilder.register<PlayStorePage>(() => PlayStorePage(
        sid: sid,
        downloadAppId: vaccineAppId,
        maliciousAppName: maliciousAppName,
        maliciousAppIcon: maliciousAppIcon,
      ));

  final ScenarioController _scenarioController = ScenarioController();

  return Container(
      width: 360.w,
      height: 90.h,
      // padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.sp), topRight: Radius.circular(10.sp)),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10.0, // soften the shadow
            // spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.topLeft,
              width: 360.w,
              height: 90.h,
              // width: 400,
              child: TextButton(
                  // U2-b
                  onPressed: () {
                    Scenario scenario = _scenarioController.getScenario(sid);

                    // scenario.userActionSequence.add(U2_b);
                    //
                    // Get.to(A2bPage(
                    //   sid: sid,
                    //   vaccineAppId: vaccineAppId,
                    //   maliciousAppName: maliciousAppName,
                    //   maliciousAppIcon: maliciousAppIcon,
                    // ));
                    print(
                        'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(sid, 'ac_105'))}');

                    Get.to(ClassBuilder.fromString(
                        PairController().getNextActionWidget(sid, 'ac_105')));

                    scenario.userActionSequence.add(UserActionController()
                        .getUserAction(
                            PairController().getCurrentActionId('ac_105')));

                    print('uaScore => ${scenario.userActionSequence}');
                  },
                  // TODO: ????????? ?????? ?????? ???????????? ????????? ????????? & ?????? ??????
                  child: Container(
                    height: 90.h,
                    child: Row(
                      children: [
                        Container(
                            width: 55.w,
                            child: Image.asset(AppContentsController()
                                .getContentsWithType(vaccineAppId, 'appIcon'))),
                        Container(
                          padding: EdgeInsets.only(left: 15.w, top: 7.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppContentsController().getContentsWithType(
                                    vaccineAppId, 'appDescription'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                AppContentsController().getContentsWithType(
                                    vaccineAppId, 'appName'),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )))
        ],
      ));
}
