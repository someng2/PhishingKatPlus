// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/model/user/user.dart';
import 'package:voskat/tempData/scenarioData.dart';
import 'package:voskat/tempData/type&ageData.dart';
import 'package:voskat/tempData/userActionData.dart';
import 'package:voskat/tempData/userData.dart';
import 'package:voskat/controller/CustomSimulController.dart';

class SimulationPage extends StatefulWidget {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  _SimulationPageState createState() => _SimulationPageState();
}

class _SimulationPageState extends State<SimulationPage> {
  @override
  User _user = user1;

  Widget build(BuildContext context) {
    var scenario =
        CustomSimulController(user: _user).getCustomSimulation(_user);

    print('모의훈련 점수: ${scenario.score}점');

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
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400)),
              titleSpacing: 0,
              actions: [
                Container(
                  width: 21.w,
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
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: TextButton(
                    child: Image.asset('image/reportIcon.png'),
                    onPressed: () {
                      //TODO: A1-b
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
                    padding: EdgeInsets.only(
                      bottom: 6.h,
                      top: 5.h,
                    ),
                    child: TextButton(
                      child: Image.asset('image/menu.png'),
                      onPressed: () {},
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 160.w,
                      height: 30.h,
                      alignment: Alignment.center,
                      child: Text('연락처에 추가',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13.sp)),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.45),
                          borderRadius: BorderRadius.circular(30))),
                  SizedBox(width: 10.w),
                  Container(
                      width: 160.w,
                      height: 30.h,
                      alignment: Alignment.center,
                      child: Text('수신 차단',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13.sp)),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30))),
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
                            Text(scenario.appActionSequence[0].contents1,
                                style: TextStyle(fontSize: 14.sp)),
                            Container(
                              height: 20.h,
                              child: TextButton(
                                  child: Text(
                                    scenario.appActionSequence[0].url,
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        decoration: TextDecoration.underline,
                                        fontSize: 14.sp),
                                  ),

                                  // U1
                                  onPressed: () {
                                    scenario.userActionSequence.add(U1_a);
                                    Get.to(
                                        (scenario.appActionSequence[1].widget));
                                  },
                                  style: TextButton.styleFrom(
                                      // backgroundColor: Colors.white,
                                      padding: EdgeInsets.all(0))),
                            ),
                            Text(scenario.appActionSequence[0].contents2,
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
