// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/controller/UserActionController.dart';
import 'package:voskat/model/user/user.dart';
import 'package:voskat/tempData/appContentsData.dart';
import 'package:voskat/tempData/maliciousAppData.dart';
import 'package:voskat/tempData/scenarioData.dart';
import 'package:voskat/tempData/type&ageData.dart';
import 'package:voskat/tempData/userActionData.dart';
import 'package:voskat/tempData/userData.dart';
import 'package:voskat/controller/CustomSimulController.dart';
import 'package:voskat/view/customWidget/A1/A1aPage.dart';
import 'package:voskat/view/customWidget/A3/A3bPage.dart';
import 'package:voskat/view/customWidget/A3/A3cPage.dart';
import 'package:voskat/view/customWidget/customDialog.dart';
import 'package:voskat/controller/PairController.dart';
import 'package:voskat/controller/AppContentsController.dart';


class SimulationPage extends StatefulWidget {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  var scenario;

  @override
  void initState() {
    super.initState();
    scenario = CustomSimulController(user: _user).getCustomSimulation(_user);
    print('모의훈련 점수: ${scenario.score}점');

    ClassBuilder.register<A1aPage>(() => A1aPage(
          sid: scenario.sid,
          subtype: scenario.subtype,
          appInfo: maliciousApp1,
        ));
  }

  @override
  User _user = user1;
  bool _isMenuPressed = false;

  Widget build(BuildContext context) {
    return (scenario.medium == '문자')
        ? Scaffold(
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
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                Container(
                  width: 21.w,
                  // height: 25.h,
                  // padding: EdgeInsets.only(bottom: 6.h),
                  child: TextButton(
                    child: Icon(Icons.search, color: Colors.black),
                    onPressed: () {},
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
                    padding: EdgeInsets.only(
                      bottom: 6.h,
                      top: 5.h,
                    ),
                    child: TextButton(
                      child: Image.asset('image/menu.png'),
                      onPressed: () {
                        setState(() {
                          _isMenuPressed = !_isMenuPressed;
                        });

                        print(_isMenuPressed);
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
              if (_isMenuPressed)
                Container(
                  height: 45.h,
                  padding: EdgeInsets.only(left: 29.w, right: 29.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 118.w,
                            height: 26.h,
                            child: TextButton(
                              child: Text('연락처에 추가',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color(0xff000000))),
                              onPressed: () {},
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(0)),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                // overlayColor: MaterialStateColor.resolveWith(
                                //     (states) => Color(0xff0473e1)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13.sp),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffffff),
                                border: Border.all(
                                    color: Color(0xffb1aeae), width: 1.sp),
                                borderRadius: BorderRadius.circular(13.sp))),
                        SizedBox(width: 52.w),
                        Container(
                            width: 118.w,
                            height: 26.h,
                            child: TextButton(
                              child: Text('수신 차단',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color(0xff000000))),
                              onPressed: () {
                                // U1-c
                                scenario.userActionSequence.add(U1_c);

                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialog(
                                        sid: scenario.sid,
                                        aid: 'A1-b',
                                        height: 144,
                                        userOkAction: U2_c,
                                        userCancelAction: U2_d,
                                      );
                                    });
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(0)),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                overlayColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xff0473e1)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13.sp),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffffff),
                                border: Border.all(
                                    color: Color(0xffb1aeae), width: 1.sp),
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
                      child:
                          Image.asset('image/messageProfile.png', width: 45.w)),
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
                            Text(AppContentsController().getContents('ac_1'),
                                style: TextStyle(fontSize: 14.sp)),
                            Container(
                              height: 20.h,
                              child: TextButton(
                                  child: Text(
                                    // scenario.appActionSequence[0].url,
                                    AppContentsController().getContents('ac_2'),
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        decoration: TextDecoration.underline,
                                        fontSize: 14.sp),
                                  ),

                                  // U1
                                  onPressed: () {
                                    // Get.to(
                                    //     (scenario.appActionSequence[1].widget));

                                    // Get.to(U1_a.nextAction);
                                    print(
                                        'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget('ac_2'))}');

                                    Get.to(ClassBuilder.fromString(
                                        PairController()
                                            .getNextActionWidget('ac_2')));

                                    scenario.userActionSequence.add(
                                        UserActionController().getUserAction(
                                            PairController()
                                                .getCurrentActionId('ac_2')));
                                  },
                                  style: TextButton.styleFrom(
                                      // backgroundColor: Colors.white,
                                      padding: EdgeInsets.all(0))),
                            ),
                            Text(AppContentsController().getContents('ac_3'),
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
            ]))

        // 카카오톡
        : Container();
  }
}
