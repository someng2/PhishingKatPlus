// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/Simulation/SimulationPage.dart';

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
          title: const  Text(
              "PhishingKat+",
              style: const TextStyle(
                  color:  const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "designhouse",
                  fontStyle:  FontStyle.normal,
                  fontSize: 23.0
              ),
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
          backgroundColor: Colors.white
        ),

        body: Center(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                      "홍길동님!\n시작할 준비가 되었나요?",
                      style: const TextStyle(
                          color:  const Color(0xff0473e1),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Recipekorea",
                          fontStyle:  FontStyle.normal,
                          fontSize: 30.0
                      ),
                      textAlign: TextAlign.left
                  ),
                  SizedBox(height: 10.h),
                  Text(
                      "모의훈련을 통해 최신 피싱에 대비하세요",
                      style: const TextStyle(
                          color:  const Color(0xffb1aeae),
                          fontWeight: FontWeight.w400,
                          fontFamily: "MalgunGothic",
                          fontStyle:  FontStyle.normal,
                          fontSize: 12.0
                      ),
                      textAlign: TextAlign.left
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text(
                      "버튼을 움직여 유형을 선택해보세요!",
                      style: const TextStyle(
                          color:  const Color(0xffb1aeae),
                          fontWeight: FontWeight.w400,
                          fontFamily: "MalgunGothic",
                          fontStyle:  FontStyle.normal,
                          fontSize: 12.0
                      ),
                  ),
                  SizedBox(width: 20.w),
                  ToggleButtons(
                    children: [
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,),
                      child: Text(
                        "맞춤형",
                        style: const TextStyle(
                            color:  const Color(0xffb1aeae),
                            fontWeight: FontWeight.w400,
                            fontFamily: "MalgunGothic",
                            fontStyle:  FontStyle.normal,
                            fontSize: 12.0
                        ),
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "유형별",
                          style: const TextStyle(
                              color:  const Color(0xffb1aeae),
                              fontWeight: FontWeight.w400,
                              fontFamily: "MalgunGothic",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12.0
                          ),
                        ),
                      ),
                    ],
                    color: Colors.black.withOpacity(0.60),
                    selectedColor: Color(0xff0473e1),
                    selectedBorderColor: Color(0xff0473e1),
                    fillColor: Color(0xff0473e1).withOpacity(0.08),
                    splashColor: Color(0xff0473e1).withOpacity(0.12),
                    hoverColor: Color(0xff0473e1).withOpacity(0.04),

                    borderRadius: BorderRadius.circular(30.0),
                    isSelected: isSelected,
                    onPressed: toggleSelect,
                  ),
                ]
              ),
              SizedBox(height: 10.h),
              Container(
                  width: 311.w,
                  height: 179.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                    color: const Color(0xff0473e1)
                ),
                child: TextButton(
                  child: Text('맞춤형\n모의체험',
                      style: const TextStyle(
                          color:  const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "YDIYGO340",
                          fontStyle:  FontStyle.normal,
                          fontSize: 19.0
                      ),
                      textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Get.to(SimulationPage());
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                  width: 311.w,
                  height: 199.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(8)
                      ),
                      color: const Color(0xff0473e1)
                  ),
                  padding:EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                    Row(
                      children:[
                        Text(
                            "나의 안심점수",
                            style: const TextStyle(
                                color:  const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Recipekorea",
                                fontStyle:  FontStyle.normal,
                                fontSize: 30.0
                            ),
                            textAlign: TextAlign.left
                        ),
                  SizedBox(width: 20.w),
                  Text(
                      "80점",
                      style: const TextStyle(
                          color:  const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Recipekorea",
                          fontStyle:  FontStyle.normal,
                          fontSize: 30.0
                      ),
                  ),
                      ]
                    ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "T 모의훈련",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),),
                              SizedBox(height: 20.h),
                              Text(
                                "S 스미싱",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),),
                              SizedBox(height: 20.h),
                              Text(
                                "V 보이스피싱",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),),

                            ],
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            children: [
                              TextButton(
                                child: Text(
                                  "시작하기",
                                  style: const TextStyle(
                                      color:  const Color(0xffddff00),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Recipekorea",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 15.0
                                  ),),
                                onPressed: () {
                                  Get.to(SimulationPage());
                                },
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "80점",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),),
                              SizedBox(height: 20.h),
                              Text(
                                "80점",
                                style: const TextStyle(
                                    color:  const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 15.0
                                ),),
                            ],
                          )
                        ],
                      )
                  ]
              )
              )
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
