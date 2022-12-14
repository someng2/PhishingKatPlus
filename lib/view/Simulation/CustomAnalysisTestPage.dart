import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:PhishingKatPlus/controller/user/UserController.dart';
import 'package:PhishingKatPlus/model/simulation/customAnalysisTest.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:PhishingKatPlus/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/view/Simulation/SimulationPage.dart';

import 'package:PhishingKatPlus/controller/AppPageController.dart';
import 'package:PhishingKatPlus/controller/CustomSimulController.dart';
import 'package:PhishingKatPlus/model/globals.dart' as globals;
import 'package:PhishingKatPlus/view/simulationTestPage.dart';

import 'package:PhishingKatPlus/controller/user/user_event.dart';
import 'package:PhishingKatPlus/view/viewModel/user_view_model.dart';

class CustomAnalysisTestPage extends StatefulWidget {
  const CustomAnalysisTestPage({Key? key}) : super(key: key);

  @override
  State<CustomAnalysisTestPage> createState() => _CustomAnalysisTestPageState();
}

class _CustomAnalysisTestPageState extends State<CustomAnalysisTestPage> {
  int index = 0;
  String selectedOptionList = "";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: 374.h, left: 65.w, right: 77.w),
        duration: Duration(milliseconds: 2000),
        padding: EdgeInsets.zero,
        backgroundColor: const Color(0xffffffff),
        content: Container(
          width: 218.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.sp)),
            color: const Color(0xffffffff),
          ),
          padding: EdgeInsets.only(
            top: 8.h,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.w,
              ),
              // ?????????
              Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    width: 36.w,
                    height: 36.h,
                    child: Image.asset('image/customTestProgressIcon.png'),
                  ),
                ],
              ),
              SizedBox(
                width: 14.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "????????? ?????? ????????????",
                    style: TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.sp),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(alignment: Alignment.center, children: [
                        Container(
                            width: 57.w,
                            height: 20.h,
                            decoration:
                                BoxDecoration(color: const Color(0xffeaf5ff))),
                        Text(
                          '?????? 1???',
                          style: TextStyle(
                              color: const Color(0xff0473e1),
                              fontWeight: FontWeight.w700,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp),
                        ),
                      ]),
                      Text(
                        " ??? ???????????????.",
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.sp),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<UserViewModel>();

    print('index = $index');
    print('customAnalysisList.length: ${customAnalysisTestList.length}');

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(47.h), // here the desired height
          child: AppBar(
            leading: Container(
              width: 14.w,
              height: 14.h,
              child: TextButton(
                child: Icon(
                  Icons.close,
                  color: const Color(0xff000000),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
            elevation: 0,
            backgroundColor: const Color(0xffeaf5ff),
            title: Text("????????? ?????? ?????????",
                style: TextStyle(
                    color: const Color(0xff0b80f5),
                    fontWeight: FontWeight.w400,
                    fontFamily: "YDIYGO320",
                    fontStyle: FontStyle.normal,
                    fontSize: 17.sp),
                textAlign: TextAlign.center),
            centerTitle: true,
          )),
      body: Column(
        children: [
          SizedBox(height: 32.h),
          Center(
            child: Container(
              height: 36.h,
              padding: EdgeInsets.only(left: 30.w),
              child: Stack(alignment: Alignment.centerLeft, children: [
                Container(
                  width: 300.w,
                  child: StepProgressIndicator(
                    totalSteps: customAnalysisTestList.length - 1,
                    currentStep: index,
                    size: 2.h,
                    padding: 0,
                    selectedColor: Color(0xff0473e1),
                    unselectedColor: Color(0xffe7e7e7),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                        width: (index == 0)
                            ? 0
                            : (index == customAnalysisTestList.length - 1)
                                ? 282.w
                                : (300.w /
                                    customAnalysisTestList.length *
                                    index)),
                    Container(
                        width: 36.sp,
                        height: 36.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Stack(alignment: Alignment.center, children: [
                          Container(
                            child:
                                Image.asset('image/customTestProgressIcon.png'),
                            width: 36.sp,
                            height: 36.sp,
                          ),
                          Text('${index + 1}',
                              style: TextStyle(
                                  color: const Color(0xff0473e1),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "SegoeUI",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20.sp),
                              textAlign: TextAlign.center),
                        ])),
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 48.h),
          Container(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Text(customAnalysisTestList[index].context,
                style: TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontFamily: "SegoeUI",
                    fontStyle: FontStyle.normal,
                    fontSize: 20.sp),
                textAlign: TextAlign.center),
          ),
          SizedBox(height: 85.h),
          Container(
            padding: EdgeInsets.only(left: 29.w, right: 29.w),
            child: Column(
              children: [
                Container(
                  width: 302.w,
                  height: 60.h,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border:
                        Border.all(color: const Color(0xff707070), width: 0.5),
                    // color: const Color(0xffe7f3ff)
                  ),
                  child: TextButton(
                    child: Container(
                      width: 302.w,
                      padding: EdgeInsets.only(left: 11.w, right: 20.w),
                      child: Text(customAnalysisTestList[index].option1,
                          style: TextStyle(
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SegoeUI",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp)),
                    ),
                    onPressed: () {
                      optionPressed(viewModel, "1");
                    },
                    style: TextButton.styleFrom(
                        minimumSize: Size.fromWidth(302.w),
                        padding: EdgeInsets.zero,
                        primary: Color(0xffe7f3ff)),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  width: 302.w,
                  height: 60.h,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border:
                        Border.all(color: const Color(0xff707070), width: 0.5),
                    // color: const Color(0xffe7f3ff)
                  ),
                  child: TextButton(
                    child: Container(
                      width: 302.w,
                      padding: EdgeInsets.only(left: 11.w, right: 20.w),
                      child: Text(customAnalysisTestList[index].option2,
                          style: TextStyle(
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SegoeUI",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp)),
                    ),
                    onPressed: () {
                      optionPressed(viewModel, "2");
                    },
                    style: TextButton.styleFrom(
                        minimumSize: Size.fromWidth(302.w),
                        padding: EdgeInsets.zero,
                        primary: Color(0xffe7f3ff)),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  width: 302.w,
                  height: 60.h,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border:
                        Border.all(color: const Color(0xff707070), width: 0.5),
                    // color: const Color(0xffe7f3ff)
                  ),
                  child: TextButton(
                    child: Container(
                      width: 302.w,
                      padding: EdgeInsets.only(left: 11.w, right: 20.w),
                      child: Text(customAnalysisTestList[index].option3,
                          style: TextStyle(
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SegoeUI",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp)),
                    ),
                    onPressed: () {
                      optionPressed(viewModel, "3");
                    },
                    style: TextButton.styleFrom(
                        minimumSize: Size.fromWidth(302.w),
                        padding: EdgeInsets.zero,
                        primary: Color(0xffe7f3ff)),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  width: 302.w,
                  height: 60.h,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border:
                        Border.all(color: const Color(0xff707070), width: 0.5),
                    // color: const Color(0xffe7f3ff)
                  ),
                  child: TextButton(
                    child: Container(
                      width: 302.w,
                      padding: EdgeInsets.only(left: 11.w, right: 20.w),
                      child: Text(customAnalysisTestList[index].option4,
                          style: TextStyle(
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w400,
                              fontFamily: "SegoeUI",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.sp)),
                    ),
                    onPressed: () {
                      optionPressed(viewModel, "4");
                    },
                    style: TextButton.styleFrom(
                        minimumSize: Size.fromWidth(302.w),
                        padding: EdgeInsets.zero,
                        primary: Color(0xffe7f3ff)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void optionPressed(UserViewModel viewModel, String option) {
    if (index < customAnalysisTestList.length - 1) {
      setState(() {
        if (index == 0) {
          selectedOptionList = selectedOptionList + " " + option;
        } else {
          selectedOptionList = selectedOptionList + ", " + option;
        }
        index++;
      });
      print('selectedOptionList = $selectedOptionList');
    }
    // ?????? ????????? ???
    else {
      // TODO: user DB??? ?????? ??????
      selectedOptionList = selectedOptionList + ", " + option;
      print('selectedOptionList = $selectedOptionList');
      print('globals.uid = ${globals.uid}');
      viewModel.onEvent(
          UserEvent.updateCustomTestResult(globals.uid, selectedOptionList));

      // TODO: ????????? ???????????? ??????
      // Get.off(SimulationPage(user: , scenario: null,));

      // Get.off(ClassBuilder.fromString(AppPageController().getWidget(
      //     CustomSimulController(
      //             user: UserController().getUser(globals.userDB, globals.uid))
      //         .getCustomSimulation_withScenarioType(
      //             UserController().getUser(globals.userDB, globals.uid))
      //         .aid)));

      Get.off(SimulationTestPage());
    }
  }
}
