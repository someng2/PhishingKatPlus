// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/Simulation/SimulationPage.dart';
import 'package:voskat/view/Simulation/SimulationType.dart';
import 'package:class_builder/class_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCustom = true;
  bool isType = false;
  late List<bool> isSelected = [isCustom, isType];

  @override
  void initState() {
    isSelected = [isCustom, isType];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "PhishingKat",
              style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "designhouse",
                  fontStyle: FontStyle.normal,
                  fontSize: 23.sp),
            ),
            actions: [
              Container(
                width: 18.w,
                child: TextButton(
                  child: Icon(
                    Icons.notifications,
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
            ],
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white),
        body: Container(
          padding: EdgeInsets.only(left: 25.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29.5.h),
              Text("홍길동님!\n시작할 준비가 되었나요?",
                  style: TextStyle(
                      color: const Color(0xff0473e1),
                      fontWeight: FontWeight.bold,
                      // fontFamily: "Recipekorea",
                      fontStyle: FontStyle.normal,
                      fontSize: 20.sp),
                  textAlign: TextAlign.left),
              SizedBox(height: 3.h),
              Text("모의훈련을 통해 최신 피싱에 대비하세요",
                  style: TextStyle(
                      color: const Color(0xffb1aeae),
                      fontFamily: "MalgunGothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp),
                  textAlign: TextAlign.left),
              SizedBox(height: 36.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "버튼을 움직여 유형을 선택해보세요!",
                  style: TextStyle(
                      color: const Color(0xffb1aeae),
                      fontWeight: FontWeight.w400,
                      fontFamily: "MalgunGothic",
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp),
                ),
                ToggleButtons(
                  constraints: BoxConstraints(
                      minHeight: 25.h,
                      maxHeight: 25.h,
                      minWidth: 51.w,
                      maxWidth: 51.w),
                  children: [
                    Text(
                      "맞춤형",
                      style: TextStyle(
                          color:
                              isCustom ? Color(0xffffffff) : Color(0xffb1aeae),
                          fontFamily: "MalgunGothic",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp),
                    ),
                    Text(
                      "유형별",
                      style: TextStyle(
                          color: isType ? Color(0xffffffff) : Color(0xffb1aeae),
                          fontWeight: FontWeight.w400,
                          fontFamily: "MalgunGothic",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp),
                    ),
                  ],
                  color: Color(0xffffffff),
                  // selectedColor: Color(0xff0473e1),
                  // selectedBorderColor: Color(0xff0473e1),
                  fillColor: Color(0xff0473e1),
                  splashColor: Color(0xff0473e1).withOpacity(0.12),
                  hoverColor: Color(0xff0473e1).withOpacity(0.04),
                  borderRadius: BorderRadius.circular(9.sp),
                  isSelected: isSelected,
                  onPressed: toggleSelect,
                ),
              ]),
              SizedBox(height: 11.h),
              Container(
                width: 311.w,
                height: 179.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                  color: Color(0xff0473e1),
                ),
                child: TextButton(
                  child: Container(
                    width: 311.w,
                    height: 179.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: isCustom
                                ? AssetImage('image/customSimul.png')
                                : AssetImage('image/categorySimul.png'))),
                    child: Text(
                      isCustom ? '맞춤형\n모의체험' : '유형별\n모의체험',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          // fontFamily: "YDIYGO340",
                          fontStyle: FontStyle.normal,
                          fontSize: 19.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    isCustom
                        ? Get.to(SimulationPage())
                        : Get.to(SimulationType());
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                  width: 311.w,
                  height: 199.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                      color: const Color(0xff0473e1)),
                  padding: EdgeInsets.only(left: 19.w, top: 21.h),
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(children: [
                          Text("나의 안심점수",
                              style: TextStyle(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Recipekorea",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 25.sp),
                              textAlign: TextAlign.left),
                          SizedBox(width: 31.w),
                          Text(
                            "80점",
                            style: TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Recipekorea",
                                fontStyle: FontStyle.normal,
                                fontSize: 25.sp),
                          ),
                        ]),
                        SizedBox(height: 20.h),
                        Container(
                          padding: EdgeInsets.only(left: 1.w),
                          child: Row(
                            children: [
                              Container(
                                width: 90.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "T 모의훈련",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Recipekorea",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.sp),
                                    ),
                                    SizedBox(height: 22.h),
                                    Text(
                                      "S 스미싱",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Recipekorea",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.sp),
                                    ),
                                    SizedBox(height: 22.h),
                                    Text(
                                      "V 보이스피싱",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Recipekorea",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 60.w,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 20.h,
                                      child: TextButton(
                                        child: Text(
                                          "시작하기",
                                          style: TextStyle(
                                              color: const Color(0xffddff00),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Recipekorea",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15.sp),
                                        ),
                                        onPressed: () {
                                          Get.to(SimulationPage());
                                        },
                                        style: TextButton.styleFrom(
                                          minimumSize: Size.zero,
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.h),
                                    Text(
                                      "80점",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Recipekorea",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.sp),
                                    ),
                                    SizedBox(height: 22.h),
                                    Text(
                                      "80점",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Recipekorea",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ]))
            ],
          ),
        ));
  }

  void toggleSelect(value) {
    if (value == 0) {
      isCustom = true;
      isType = false;
    } else {
      isCustom = false;
      isType = true;
    }
    setState(() {
      isSelected = [isCustom, isType];
    });
  }
}
