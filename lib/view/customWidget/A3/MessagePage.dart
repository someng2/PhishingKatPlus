// ignore_for_file: file_names
/// A3-c

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/userActionData.dart';
import 'package:voskat/view/Simulation/SimulationResultPage.dart';

import 'ReportPage.dart';

class MessagePage extends StatelessWidget {
  final String sid;
  MessagePage({Key? key, required this.sid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Scenario scenario = ScenarioController().getScenario(sid);
    double dialog_height = 187;

    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            child: Icon(
              Icons.navigate_before,
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
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          title: Text(scenario.phoneNumber,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400)),
          titleSpacing: 0,
          actions: [
            Container(
              width: 18.w,
              child: TextButton(
                child: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                onPressed: () {

                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
            SizedBox(width: 20.w),
            Container(
              width: 19.w,
              // height: 25.h,
              padding: EdgeInsets.only(bottom: 1.h),
              child: TextButton(
                child: Image.asset('image/trashbinIcon.png'),
                onPressed: () {
                  // U4-a
                  scenario.userActionSequence.add(U4_a);

                  Get.showSnackbar(
                    GetSnackBar(
                      title: '문자 삭제 완료',
                      message: '문자가 성공적으로 삭제되었습니다.',
                      duration: Duration(seconds: 2),
                      snackPosition: SnackPosition.BOTTOM,
                    ),
                  );

                  Get.to(SimulationResultPage(
                    sid: sid,
                  ));
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
            SizedBox(width: 20.w),
            Container(
                width: 19.w,
                // height: 15.h,
                child: TextButton(
                  child: Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    // U4-b
                    scenario.userActionSequence.add(U4_b);

                    Get.to(SimulationResultPage(sid: sid));
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                )),
            SizedBox(width: 15.w),
          ],
        ),
        body: Column(children: [
          Container(
            height: 67.h,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 118.w,
                  height: 26.h,
                  child: TextButton(
                    child: Text('연락처에 추가',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xff000000))),
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xff0473e1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.sp),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffffff),
                      border: Border.all(color: Color(0xffb1aeae), width: 1.sp),
                      borderRadius: BorderRadius.circular(13.sp))),
              SizedBox(width: 52.w),
              Container(
                  width: 118.w,
                  height: 26.h,
                  child: TextButton(
                    child: Text('수신 차단',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xff000000))),
                    onPressed: () {
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return CustomDialog(
                      //         sid: scenario.sid,
                      //         aid: 'A1-b',
                      //         userOkAction: U2_c,
                      //         userCancelAction: U2_d,
                      //       );
                      //     });
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0)),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xff0473e1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.sp),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffffff),
                      border: Border.all(color: Color(0xffb1aeae), width: 1.sp),
                      borderRadius: BorderRadius.circular(13.sp))),
            ]),
          ),
          Container(
            child: Text('2022년 3월 2일 수요일',
                style: TextStyle(
                    fontSize: 13.sp, color: Colors.black.withOpacity(0.6))),
            padding: EdgeInsets.only(bottom: 10),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Image.asset('image/messageProfile.png', width: 45.w)),
              SizedBox(width: 5.w),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // width: 255.w,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                        color: Color(0xffC4C4C4).withOpacity(0.28),
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            // scenario.appActionSequence[0].contents1,
                          'contents1',
                            style: TextStyle(fontSize: 14.sp)),
                        Container(
                          height: 20.h,
                          child: TextButton(
                              child: Text(
                                // scenario.appActionSequence[0].url,
                                '',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    decoration: TextDecoration.underline,
                                    fontSize: 14.sp),
                              ),

                              // U1
                              onPressed: () {
                                // scenario.userActionSequence.add(U1_a);
                                // Get.to((scenario.appActionSequence[1].widget));
                              },
                              style: TextButton.styleFrom(
                                  // backgroundColor: Colors.white,
                                  padding: EdgeInsets.all(0))),
                        ),
                        Text(
                            // scenario.appActionSequence[0].contents2,
                          '',
                            style: TextStyle(fontSize: 14.sp)),
                      ],
                    ),
                  ),
                  Container(
                    // width: 50,
                    child: Text('오전 9:05',
                        style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.black.withOpacity(0.6))),
                    padding: EdgeInsets.only(bottom: 5, left: 10),
                  )
                ],
              ),
            ],
          )
        ]));
  }
}
