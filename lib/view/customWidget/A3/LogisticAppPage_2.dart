// ignore_for_file: file_names
/// A3-d

import 'dart:async';

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/AppContentsController.dart';
import 'package:voskat/controller/PairController.dart';
import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/controller/UserActionController.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/model/user/user.dart';
import 'package:voskat/tempData/userData.dart';
import 'package:get/get.dart';
import 'package:voskat/view/customWidget/A3/MessagePage.dart';

class LogisticAppPage_2 extends StatefulWidget {
  String sid;
  String invoiceNumber;
  LogisticAppPage_2({Key? key, required this.sid, required this.invoiceNumber}) : super(key: key);

  @override
  State<LogisticAppPage_2> createState() => _LogisticAppPage_2State();
}

class _LogisticAppPage_2State extends State<LogisticAppPage_2> {
  bool _showDialog = false;

  // TODO: DB 에서 가져오기
  User _user = user2;

  @override
  void initState() {
    ClassBuilder.register<MessagePage>(() => MessagePage(
      sid: widget.sid,
    ));
    Timer(Duration(seconds: 3), () {
      setState(() {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return LogisticDialog();
            });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEBE6E6),
        appBar: AppBar(
          backgroundColor: Color(0xff38425E),
          title: Text(
            '조회결과',
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5.w),
                child: Text(
                  '기본정보',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                  width: 330.w,
                  height: 263.h,
                  padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7.sp)),
                  child: Column(children: [
                    packageInfo('택배사', 'CJ대한통운'),
                    Divider(
                      thickness: 1.5.sp,
                    ),
                    packageInfo('송장번호', widget.invoiceNumber),
                    Divider(
                      thickness: 1.5.sp,
                    ),
                    packageInfo('상품정보', ''),
                    Divider(
                      thickness: 1.5.sp,
                    ),
                    packageInfo('보내는 분', ''),
                    Divider(
                      thickness: 1.5.sp,
                    ),
                    packageInfo('받는 분', _user.name),
                  ])),
              SizedBox(height: 30.h),
              Container(
                padding: EdgeInsets.only(left: 5.w),
                child: Text(
                  '상태정보',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                  width: 330.w,
                  padding: EdgeInsets.only(
                      top: 10.h, left: 15.w, right: 15.w, bottom: 10.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7.sp)),
                  child: Column(
                    children: [
                      deliverInfo('2022-05-25\n14:50:04', '택배 상품이 이동중입니다.'),
                      Divider(
                        thickness: 1.5.sp,
                      ),
                      deliverInfo(
                          '2022-05-24\n18:59:41', '배송 예정인 상품을 인수하였습니다.'),
                    ],
                  )),
              // TextButton(
              //   child: Text('show dialog'),
              //   onPressed: () {
              //     showDialog(
              //         context: context,
              //         builder: (BuildContext context) {
              //           return LogisticDialog();
              //         });
              //   },
              // )
            ],
          ),
        ));
  }

  Widget packageInfo(String infoName, String info) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.h, top: 5.h),
      child: Row(children: [
        Container(
            width: 80.w,
            child: Text(
              infoName,
              style: TextStyle(fontSize: 16.sp, color: Colors.grey),
            )),
        Text(info, style: TextStyle(fontSize: 16.sp))
      ]),
    );
  }

  Widget deliverInfo(String time, String info) {
    return Container(
      height: 40.h,
      child: Row(
        children: [Container(width: 90.w, child: Text(time)), Text(info)],
      ),
    );
  }

  Widget LogisticDialog() {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 681 - 100),
            child: Dialog(
              child: Container(
                  width: 130.w,
                  height: 110.h,
                  padding: EdgeInsets.only(
                      top: 10.h, bottom: 10.h, left: 15.w, right: 15.w),
                  child: Column(
                    children: [
                      Container(child: Text('문자 내용과 달리 배송지가 잘 등록되어 있네요!')),
                      TextButton(
                        child: Text(AppContentsController().getContents('ac_117')),
                        onPressed: () {
                          Navigator.pop(context);

                          print(
                              'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(widget.sid, 'ac_117'))}');

                          Get.to(ClassBuilder.fromString(PairController()
                              .getNextActionWidget(widget.sid, 'ac_117')));

                          Scenario scenario =
                          ScenarioController().getScenario(widget.sid);

                          scenario.userActionSequence.add(UserActionController()
                              .getUserAction(
                              PairController().getCurrentActionId('ac_117')));
                        },
                      )
                    ],
                  )),
            )));
  }
}
