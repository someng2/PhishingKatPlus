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
import 'package:voskat/view/customWidget/A3/A3bPage.dart';
import 'package:voskat/view/customWidget/customDialog.dart';

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
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: TextButton(
                    child: Image.asset('image/reportIcon.png'),
                    onPressed: () {
                      //U1-c

                      // scenario.userActionSequence.add(U1_c);
                      Get.dialog(
                        Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.sp))),
                          child: Container(
                              height: 380.h,
                              padding: EdgeInsets.only(
                                  top: 30.h, left: 10.w, right: 10.w),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      '한국인터넷 진흥원(118)에 \n신고하기',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                    // decoration: BoxDecoration(border: Border.all(), color: Colors.blue),
                                    height: 150.h,
                                    child: Center(
                                        child:
                                            Image.asset('image/kisaLogo.png')),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: 50.h, left: 5.w, right: 5.w),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.sp)),
                                              child: TextButton(
                                                child: Text(
                                                  '신고하기',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  // U2-c

                                                  scenario.userActionSequence
                                                      .add(U2_c);
                                                  Get.to(A3bPage());
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.sp)),
                                              child: TextButton(
                                                child: Text(
                                                  '취소하기',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {},
                                              ),
                                            )
                                          ]))
                                ],
                              )),
                        ),
                      );
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
                      // TODO: 휴지통 모양으로 바꾸기
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.sp),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffffff),
                          border:
                              Border.all(color: Color(0xffb1aeae), width: 1.sp),
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
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomDialog(
                                  sid: scenario.sid,
                                  aid: 'A1-b',
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.sp),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffffff),
                          border:
                              Border.all(color: Color(0xffb1aeae), width: 1.sp),
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
