// ignore_for_file: file_names
/// A2-f

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/controller/PairController.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/controller/UserActionController.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/view/customWidget/A3/LogisticAppPage_2.dart';
import 'package:get/get.dart';

class LogisticAppPage_1 extends StatefulWidget {
  String sid;
  LogisticAppPage_1({Key? key, required this.sid}) : super(key: key);

  @override
  _LogisticAppPage_1State createState() => _LogisticAppPage_1State();
}

class _LogisticAppPage_1State extends State<LogisticAppPage_1> {
  List<String> logisticCompanyList = [
    'CJ대한통운',
    '한진택배',
    '롯데택배',
    '우체국택배',
    '편의점택배',
    'KG로지스',
    '옐로우캡',
    'KGB택배',
    '대신택배',
    '천일택배',
    'GTX로지스',
    '일양로지스',
    '합동택배',
    'EMS',
    '로젠택배',
    '굿투럭'
  ];

  String invoiceNumber = '564733001280';

  @override
  void initState() {
    super.initState();

    ClassBuilder.register<LogisticAppPage_2>(() => LogisticAppPage_2(
          sid: widget.sid,
          invoiceNumber: invoiceNumber,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE6E6),
      appBar: AppBar(
        backgroundColor: Color(0xff38425E),
        title: Text(
          '택배조회',
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [Container(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 10.h),
                  child: Text('택배사를 선택해주세요.',
                      style: TextStyle(
                          color: Color(0xff38425E),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700)),
                ),
                Container(
                    height: 230.h,
                    padding: EdgeInsets.only(top: 10.h),
                    child: GridView.builder(
                      itemCount: logisticCompanyList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, //1 개의 행에 보여줄 item 개수
                        childAspectRatio: 2 / 1.1, //item 의 가로 1, 세로 2 의 비율
                        mainAxisSpacing: 7.h, //수평 Padding
                        crossAxisSpacing: 5.w, //수직 Padding
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            alignment: Alignment.center,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: (index == 0)
                                    ? Color(0xffFEC592D).withOpacity(0.9)
                                    : Colors.white,
                                border: Border.all(
                                    color: Color(0xffFEC592D).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(10.sp)),
                            child: Text(
                              logisticCompanyList[index],
                              style: TextStyle(
                                  color: (index == 0)
                                      ? Colors.white
                                      : Color(0xffFEC592D),
                                  fontSize: 13.sp),
                            ));
                      },
                    )),
                SizedBox(height: 10.h),
                Container(
                    padding: EdgeInsets.only(left: 15.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.sp)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
                          child: Row(
                            children: [
                              Container(
                                  width: 100.w,
                                  child: Text('운송장 번호',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffFEC592D)
                                              .withOpacity(0.8)))),
                              Text(invoiceNumber,
                                  // '\'-\'없이 입력해 주세요.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.sp))
                            ],
                          ),
                        ),
                        Divider(thickness: 1.5.sp),
                        Container(
                          padding: EdgeInsets.only(top: 5.h, bottom: 10.h),
                          child: Row(
                            children: [
                              Container(
                                  width: 100.w,
                                  child: Text('상품명',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffFEC592D)
                                              .withOpacity(0.8)))),
                              Text('미입력시 \'상품\'으로 표기 됩니다.',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)))
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 10.h),
                Container(
                    height: 60.h,
                    padding: EdgeInsets.only(left: 5.w, top: 7.h, bottom: 6.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.sp),
                      // color: Colors.white.withOpacity(0.2)
                    ),
                    child: Text(
                      '운송장번호가 포함된 문자 또는 메모를 복사하시면 운송장번호가 자동으로 입력됩니다.',
                      style: TextStyle(
                          color: Color(0xff38425E), fontWeight: FontWeight.w600),
                    )),
                SizedBox(height: 165.h),
                Container(
                    alignment: Alignment.center,
                    width: 330.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.sp),
                      border:
                          Border.all(color: Color(0xffFEC592D).withOpacity(0.5)),
                    ),
                    child: TextButton(
                      child: Text(AppContentsController().getContents('ac_116'),
                          style: TextStyle(
                              color: Color(0xffFEC592D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600)),
                      onPressed: () {
                        print(
                            'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(widget.sid, 'ac_116'))}');

                        Get.to(ClassBuilder.fromString(PairController()
                            .getNextActionWidget(widget.sid, 'ac_116')));

                        Scenario scenario =
                            ScenarioController().getScenario(widget.sid);

                        scenario.userActionSequence.add(UserActionController()
                            .getUserAction(
                                PairController().getCurrentActionId('ac_116')));
                      },
                    ))
              ],
            ),
          ),]
        ),
      ),
    );
  }
}
