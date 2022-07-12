// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:voskat/controller/AppPageController.dart';
import 'package:voskat/controller/CustomSimulController.dart';
import 'package:voskat/controller/user/UserController.dart';
import 'package:voskat/tempData/userData.dart';
import 'package:voskat/view/Etc./NoticePage.dart';
import 'package:voskat/view/MY/MyPage.dart';
import 'package:voskat/view/SignUp/AuthorityRequestPage.dart';
import 'package:voskat/view/SignUp/LaunchPage.dart';
import 'package:voskat/view/Simulation/SimulationPage.dart';
import 'package:voskat/view/Simulation/SimulationType.dart';
import 'package:class_builder/class_builder.dart';

import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:voskat/view/SignUp/SignUpPage_age.dart';
import 'package:voskat/view/SplashScreen.dart';
import 'package:voskat/view/simulationResultDBTest.dart';
import 'package:voskat/view/userDBTest.dart';
import 'package:voskat/view/userTokenTestPage.dart';
import 'package:voskat/view/viewModel/simulation_result_view_model.dart';
import 'package:voskat/view/viewModel/user_view_model.dart';

import '../controller/user/simulation_result_api.dart';
import '../controller/user/simulation_result_repository_impl.dart';
import '../controller/user/user_api.dart';
import '../controller/user/user_event.dart';
import '../controller/user/user_repository_impl.dart';
import '../controller/user/user_state.dart';
import 'Simulation/AcquaintanceImpersonationPage.dart';
import 'Simulation/CustomAnalysisTestPage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:voskat/model/globals.dart' as globals;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCustom = true;
  bool isType = false;
  late List<bool> isSelected = [isCustom, isType];

  final token_storage = FlutterSecureStorage();

  // @override
  // void dispose() {
  //   // _network.dispose();
  //   super.dispose();
  // }

  @override
  void initState() {
    isSelected = [isCustom, isType];

    var customScenario = CustomSimulController(user: userList.last)
        .getCustomSimulation(userList.last);

    ClassBuilder.register<SimulationPage>(() => SimulationPage(
        user: userList.last,
        scenario: CustomSimulController(user: userList.last)
            .getCustomSimulation(userList.last)));

    ClassBuilder.register<AcquaintanceImpersonationPage>(
        () => AcquaintanceImpersonationPage(
              sid: 'A0-h',
              aid: 'A1-i',
              messageList: ['ac_29', 'ac_30', 'A1-i'],
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('globals.uid = ${globals.uid}');

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(46.5.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 118.w, top: 11.5.h),
                    child: Text(
                      "PhishingKat",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "designhouse",
                          fontStyle: FontStyle.normal,
                          fontSize: 23.sp),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20.5.h),
                    child: Text('+',
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SegoeUI",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.sp),
                        textAlign: TextAlign.left),
                  )
                ],
              ),
            ),
            actions: [
              Container(
                padding: EdgeInsets.only(right: 12.w, top: 7.5.h, bottom: 10.h),
                child: TextButton(
                  child: Image.asset(
                    'image/bellIcon.png',
                    // color: const Color(0xff898686),
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
            ],
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white,
            shape: Border(
                bottom: BorderSide(color: Color(0xffe7e7e7), width: 2.h)),
          ),
        ),
        floatingActionButton: FabCircularMenu(
            fabSize: 64.sp,
            fabColor: Colors.white,
            fabMargin: EdgeInsets.only(bottom: 19.h, right: 24.w),
            fabOpenIcon: Image.asset(
              'image/appCharacter.png',
              // width: 64.sp, height: 64.sp,
            ),
            ringWidth: 95.w,
            ringDiameter: 380.w,
            ringColor: Color(0xffe7e7e7),
            fabCloseIcon: Image.asset('image/menuCloseIcon.png'),
            children: <Widget>[
              Container(
                width: 42.sp,
                height: 63.sp,
                child: Column(
                  children: [
                    Container(
                      width: 42.sp,
                      height: 42.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff), shape: BoxShape.circle),
                      padding: EdgeInsets.only(
                          top: 3.7.sp,
                          bottom: 3.7.sp,
                          left: 4.sp,
                          right: 4.5.sp),
                      child: TextButton(
                        child: Image.asset('image/myPageIcon.png'),
                        onPressed: () {
                          Get.to(MyPage());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'MY',
                      style: TextStyle(
                          color: const Color(0xff373b40),
                          fontWeight: FontWeight.w400,
                          fontFamily: "YDIYGO330",
                          fontStyle: FontStyle.normal,
                          fontSize: 9.sp),
                    )
                  ],
                ),
              ),
              Container(
                width: 42.sp,
                height: 63.sp,
                child: Column(
                  children: [
                    Container(
                      width: 42.sp,
                      height: 42.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff), shape: BoxShape.circle),
                      padding: EdgeInsets.only(
                          top: 3.7.sp,
                          bottom: 3.7.sp,
                          left: 4.sp,
                          right: 4.5.sp),
                      child: TextButton(
                        child: Image.asset('image/noticeIcon.png'),
                        onPressed: () {
                          Get.to(NoticePage());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      '공지사항',
                      style: TextStyle(
                          color: const Color(0xff373b40),
                          fontWeight: FontWeight.w400,
                          fontFamily: "YDIYGO330",
                          fontStyle: FontStyle.normal,
                          fontSize: 9.sp),
                    )
                  ],
                ),
              ),
              Container(
                width: 42.sp,
                height: 63.sp,
                child: Column(
                  children: [
                    Container(
                      width: 42.sp,
                      height: 42.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff), shape: BoxShape.circle),
                      padding: EdgeInsets.only(
                          top: 6.6.sp,
                          bottom: 6.6.sp,
                          left: 4.8.sp,
                          right: 4.8.sp),
                      child: TextButton(
                        child: Image.asset('image/Q&AIcon.png'),
                        onPressed: () {
                          print('Q&A');
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      'Q&A',
                      style: TextStyle(
                          color: const Color(0xff373b40),
                          fontWeight: FontWeight.w400,
                          fontFamily: "YDIYGO330",
                          fontStyle: FontStyle.normal,
                          fontSize: 9.sp),
                    )
                  ],
                ),
              ),
              Container(
                width: 42.sp,
                height: 63.sp,
                child: Column(
                  children: [
                    Container(
                      width: 42.sp,
                      height: 42.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff), shape: BoxShape.circle),
                      padding: EdgeInsets.only(
                        top: 9.4.sp,
                        bottom: 5.sp,
                      ),
                      child: TextButton(
                        child: Image.asset('image/settingIcon.png'),
                        onPressed: () {
                          print('설정');
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      '설정',
                      style: TextStyle(
                          color: const Color(0xff373b40),
                          fontWeight: FontWeight.w400,
                          fontFamily: "YDIYGO330",
                          fontStyle: FontStyle.normal,
                          fontSize: 9.sp),
                    )
                  ],
                ),
              ),
              Container(
                width: 42.sp,
                height: 63.sp,
                child: Column(
                  children: [
                    Container(
                      width: 42.sp,
                      height: 42.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffffffff), shape: BoxShape.circle),
                      padding: EdgeInsets.only(
                        top: 9.4.sp,
                        bottom: 5.sp,
                      ),
                      child: TextButton(
                        child: Image.asset('image/phishingNewsIcon.png'),
                        onPressed: () async {
                          final url = Uri.parse('http://naver.me/5WGVa9qi');
                          if (await canLaunchUrl(url)) {
                            launchUrl(url,
                                mode: LaunchMode.externalApplication);
                          }
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      '피싱뉴스',
                      style: TextStyle(
                          color: const Color(0xff373b40),
                          fontWeight: FontWeight.w400,
                          fontFamily: "YDIYGO330",
                          fontStyle: FontStyle.normal,
                          fontSize: 9.sp),
                    )
                  ],
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 25.w, right: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text('회원가입 페이지'),
                      onPressed: () {
                        Get.to(LaunchPage());
                      },
                    ),
                    TextButton(
                      child: Text('UserDBTest 페이지'),
                      onPressed: () {
                        Get.to(UserDBTestScreen());
                      },
                    ),

                    TextButton(
                      child: Text('SimulationResultDBTest 페이지'),
                      onPressed: () {
                        Get.to(SimulationResultDBTestScreen());
                      },
                    ),
                    TextButton(
                      child: Text('CustomAnalysisTest Page'),
                      onPressed: () {
                        Get.to(CustomAnalysisTestPage());
                      },
                    ),
                    TextButton(
                      child: Text('UserTokenTest Page'),
                      onPressed: () {
                        Get.to(UserTokenTestPage());
                      },
                    ),
                    TextButton(
                        onPressed: () async {
                          await token_storage.delete(key: "userToken");
                          await token_storage.delete(
                              key: "userTokenCreatedTime");

                          print('deleted user token in local!');
                        },
                        child: Text('local에서 유저 토큰 없애기')),

                    // Container(
                    //   padding: EdgeInsets.zero,
                    //     width: 359.5,
                    //     height: 2,
                    //     decoration: BoxDecoration(
                    //         color: const Color(0xffe7e7e7)
                    //     ),),
                    SizedBox(height: 29.5.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                                '${UserController().getUserName(globals.userDB, globals.uid)}',
                                style: TextStyle(
                                    color: Color(0xff0473e1),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Recipekorea',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20.sp),
                                textAlign: TextAlign.left),
                            Text("님!",
                                style: TextStyle(
                                    color: Color(0xff0473e1),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Recipekorea',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20.sp),
                                textAlign: TextAlign.left),
                          ],
                        ),
                        Text("시작할 준비가 되었나요?",
                            style: TextStyle(
                                color: Color(0xff0473e1),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Recipekorea',
                                fontStyle: FontStyle.normal,
                                fontSize: 20.sp),
                            textAlign: TextAlign.left),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Text("모의훈련을 통해 최신 피싱에 대비하세요",
                        style: TextStyle(
                            color: const Color(0xffb1aeae),
                            fontFamily: 'MalgunGothic',
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp),
                        textAlign: TextAlign.left),
                    SizedBox(height: 36.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                    color: isCustom
                                        ? Color(0xffffffff)
                                        : Color(0xffb1aeae),
                                    fontFamily: "MalgunGothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp),
                              ),
                              Text(
                                "유형별",
                                style: TextStyle(
                                    color: isType
                                        ? Color(0xffffffff)
                                        : Color(0xffb1aeae),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.sp)),
                              image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: isCustom
                                      ? AssetImage('image/customSimulation.png')
                                      : AssetImage(
                                          'image/categorySimulation.png'))),
                          child: Container(
                            padding: EdgeInsets.only(right: 18.w, top: 15.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  isCustom ? '맞춤형' : '유형별',
                                  style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "YDIYGO340",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19.sp),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 9.h),
                                Text(
                                  '모의체험',
                                  style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "YDIYGO340",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19.sp),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (isCustom) {
                            print(
                                'CustomSimulController(user: userList.last).getCustomSimulation_withScenarioType(userList.last).aid => ${AppPageController().getWidget(CustomSimulController(user: userList.last).getCustomSimulation_withScenarioType(userList.last).aid)}');
                            print(
                                'ClassBuilder.fromString => ${ClassBuilder.fromString(AppPageController().getWidget(CustomSimulController(user: userList.last).getCustomSimulation_withScenarioType(userList.last).aid))}');
                          }

                          isCustom

                              //  ? Get.to(SimulationPage())
                              //   : Get.to(SimulationType());

                              ? {
                                  // Get.to(SimulationPage(user: userList.last))
                                  Get.to(ClassBuilder.fromString(AppPageController()
                                      .getWidget(CustomSimulController(
                                              user: userList.last)
                                          .getCustomSimulation_withScenarioType(
                                              userList.last)
                                          .aid)))
                                }
                              :

                              // Get.to(SimulationPage(user: user2));

                              // TODO: 유형별 모의체험으로 이동
                              Get.to(SimulationType());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    SizedBox(height: 36.h),
                    Container(
                        width: 311.w,
                        height: 199.h,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.sp)),
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
                                      width: 100.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                    SizedBox(width: 82.w),
                                    Container(
                                      width: 70.w,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 70.w,
                                            height: 20.h,
                                            child: TextButton(
                                              child: Text(
                                                "시작하기",
                                                style: TextStyle(
                                                    color:
                                                        const Color(0xffddff00),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Recipekorea",
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 15.sp),
                                              ),
                                              onPressed: () {
                                                Get.to(ClassBuilder.fromString(
                                                    AppPageController().getWidget(
                                                        CustomSimulController(
                                                                user: userList
                                                                    .last)
                                                            .getCustomSimulation_withScenarioType(
                                                                userList.last)
                                                            .aid)));
                                              },
                                              style: TextButton.styleFrom(
                                                minimumSize: Size.zero,
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
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
                              ),
                            ])),
                    SizedBox(height: 35.h)
                  ],
                ),
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
