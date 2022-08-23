import 'dart:io' as i;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:PhishingKatPlus/view/MY/SimulationHistoryPage.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:PhishingKatPlus/controller/user/UserController.dart';
import 'package:PhishingKatPlus/model/globals.dart' as globals;
import 'package:expand_tap_area/expand_tap_area.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  i.File? _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Stack(
            children: [
              Container(
                width: 360.w,
                height: 203.h,
                child:
                    Image.asset('image/myPageBackground.png', fit: BoxFit.fill),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // decoration: BoxDecoration(border: Border.all()),
                    padding: EdgeInsets.only(top: 8.h, left: 18.w, right: 11.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 6.h),
                            Container(
                              width: 14.sp,
                              height: 14.sp,
                              child: ExpandTapWidget(
                                child: Image.asset(
                                  'image/closeIcon.png',
                                  color: Color(0xff000000),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                tapPadding: EdgeInsets.all(25.0),
                                // style: TextButton.styleFrom(
                                //   minimumSize: Size.zero,
                                //   padding: EdgeInsets.zero,
                                //   // tapTargetSize: MaterialTapTargetSize.padded,
                                // ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: 293.h),
                        Container(
                          width: 24.sp,
                          child: TextButton(
                            child: Image.asset('image/profileSettingIcon.png'),
                            onPressed: () {
                              BuildContext dialogContext;
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    dialogContext = context;
                                    return profileSettingDialog(dialogContext);
                                  });
                            },
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 19.h),
                  Container(
                    // height: 80.h,
                    padding: EdgeInsets.only(left: 13.w),
                    child: Row(
                      children: [
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            width: 80.sp,
                            height: 80.sp,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xffffffff), width: 2)),
                          ),
                          Container(
                            width: 70.sp,
                            height: 70.sp,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffffffff)),
                          ),
                          Container(
                              width: 53.8.w,
                              height: 58.6.h,
                              child: _image == null
                                  ? Image.asset(
                                      'image/defaultProfileImage.png',
                                      fit: BoxFit.fill,
                                    )
                                  : Image.file(i.File(_image!.path)))
                        ]),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  // "${UserController().getUserName(globals.userDB, globals.uid)}",
                                  globals.nickname,
                                  style: TextStyle(
                                      color: const Color(0xff0473e1),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Recipekorea",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 14.h),
                              Text("70점",
                                  style: TextStyle(
                                      color: const Color(0xff0473e1),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Recipekorea",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19.sp),
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 12.h),
                  Center(
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6.h, left: 9.w, right: 5.w),
                        width: 333.w,
                        height: 49.h,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.sp)),
                            color: const Color(0xffabe7ff)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("피싱관련 주요뉴스",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.sp),
                                textAlign: TextAlign.left),
                            // SizedBox(height: 3.h),
                            Row(
                              children: [
                                Text("[관련기사] ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "AppleSDGothicNeoB00",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.sp),
                                    textAlign: TextAlign.left),
                                Container(
                                  width: 240.w,
                                  child: Text(
                                    "야간근무 전 은행 들렀다 보이스피싱범 잡은 경찰",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "AppleSDGothicNeoB00",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 23.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 25.w, right: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("최근 활동",
                                style: TextStyle(
                                    color: const Color(0xff0473e1),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Recipekorea",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 19.sp),
                                textAlign: TextAlign.left),
                            // SizedBox(width: 140.w),
                            Text("모의훈련 진행율 87%",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp),
                                textAlign: TextAlign.right)
                          ],
                        ),
                      ),
                      SizedBox(height: 8.5.h),
                      Container(
                          width: 360.w,
                          height: 0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffb1aeae),
                                  width: 0.30000001192092896))),
                      Container(
                        height: 52.h,
                        padding: EdgeInsets.only(left: 30.w, right: 12.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("2022. 02. 15 택배 맞춤형 모의체험",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp),
                                textAlign: TextAlign.left),
                            Text("75점",
                                style: TextStyle(
                                    color: const Color(0xff0473e1),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp),
                                textAlign: TextAlign.left)
                          ],
                        ),
                      ),
                      Container(
                          width: 360.w,
                          height: 0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffb1aeae),
                                  width: 0.30000001192092896))),
                      Container(
                        height: 52.h,
                        padding: EdgeInsets.only(left: 30.w, right: 12.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("2022. 02. 15 택배 유형별 모의체험",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp),
                                textAlign: TextAlign.left),
                            Text("75점",
                                style: TextStyle(
                                    color: const Color(0xff0473e1),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp),
                                textAlign: TextAlign.left)
                          ],
                        ),
                      ),
                      Container(
                          width: 360.w,
                          height: 0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffb1aeae),
                                  width: 0.30000001192092896))),
                      Container(
                        height: 52.h,
                        padding: EdgeInsets.only(left: 30.w, right: 12.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("2022. 02. 15 택배 맞춤형 모의체험",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp),
                                textAlign: TextAlign.left),
                            Text("75점",
                                style: TextStyle(
                                    color: const Color(0xff0473e1),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13.sp),
                                textAlign: TextAlign.left)
                          ],
                        ),
                      ),
                      SizedBox(height: 2.5.h),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: 148.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.sp)),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 0),
                                    blurRadius: 8,
                                    spreadRadius: 0)
                              ],
                              color: const Color(0xffffffff)),
                          child: TextButton(
                            child: Text("과거 훈련 이력 더보기",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "AppleSDGothicNeoB00",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp),
                                textAlign: TextAlign.left),
                            onPressed: () {
                              Get.to(SimulationHistoryPage());
                            },
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                  // SizedBox(height: 14.h),
                  Container(
                      width: 360.w,
                      height: 10.h,
                      decoration:
                          BoxDecoration(color: const Color(0xffe6f2ff))),
                  SizedBox(height: 12.h),
                  Container(
                    padding: EdgeInsets.only(left: 25.w, right: 19.w),
                    child: Column(
                      children: [
                        Container(
                          height: 29.h,
                          alignment: Alignment.topCenter,
                          // decoration: BoxDecoration(border: Border.all()),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Text("총 테스트 기록결과",
                                    style: TextStyle(
                                        color: const Color(0xff0473e1),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Recipekorea",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 19.sp),
                                    textAlign: TextAlign.left),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Container(
                          height: 30.h,
                          child: Row(
                            children: [
                              Container(
                                width: 29.sp,
                                height: 29.sp,
                                child: Image.asset('image/medalGold.png'),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text("5",
                                  style: TextStyle(
                                      color: const Color(0xffffb800),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica-Narrow",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(
                                width: 41.w,
                              ),
                              Container(
                                width: 29.sp,
                                height: 29.sp,
                                child: Image.asset('image/medalSilver.png'),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text("1",
                                  style: TextStyle(
                                      color: const Color(0xff898686),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica-Narrow",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(
                                width: 41.w,
                              ),
                              Container(
                                width: 29.sp,
                                height: 29.sp,
                                child: Image.asset('image/medalBronze.png'),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text("1",
                                  style: TextStyle(
                                      color: const Color(0xffc64a15),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica-Narrow",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20.sp),
                                  textAlign: TextAlign.left),
                              SizedBox(
                                width: 41.w,
                              ),
                              Container(
                                width: 22.w,
                                child: Image.asset('image/Lock.png'),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("5",
                                  style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica-Narrow",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20.sp),
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 30.w, top: 13.h),
                      child: Container(
                        height: 50.h,
                        child: Row(
                          children: [
                            Container(
                                width: 22.w,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 22.sp,
                                        height: 22.sp,
                                        child: Image.asset(
                                            'image/thumbsUpIcon.png'),
                                      ),
                                      SizedBox(height: 8.h),
                                      Container(
                                        width: 20.sp,
                                        height: 20.sp,
                                        child: Image.asset(
                                            'image/badMoodIcon.png'),
                                      ),
                                    ])),
                            SizedBox(width: 1.w),
                            Container(
                              // width: 50.w,
                              padding: EdgeInsets.only(top: 9.h),
                              child: Column(children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 50.w,
                                  height: 17.h,
                                  // margin: EdgeInsets.only(top: 2.h),
                                  decoration: BoxDecoration(
                                      color: const Color(0xfffffcd3)),
                                  child: Text(
                                    '최고기록',
                                    style: TextStyle(
                                        color: const Color(0xffffb800),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "HancomMalangMalang",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12.sp),
                                  ),
                                ),
                                SizedBox(height: 7.h),
                                Container(
                                  alignment: Alignment.center,
                                  // width: 50.w,
                                  height: 17.h,
                                  // margin: EdgeInsets.only(top: 1.h),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffffdcdc)),
                                  child: Text(
                                    '최저기록',
                                    style: TextStyle(
                                        color: const Color(0xffff6b6b),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "HancomMalangMalang",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 9.h),
                                Text(
                                  '2022. 02. 15 택배형 모의체험',
                                  style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "AppleSDGothicNeoL00",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  '2022. 02. 15 택배형 모의체험',
                                  style: TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "AppleSDGothicNeoL00",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: 22.h),
                  Container(
                      width: 360.w,
                      height: 10.h,
                      decoration:
                          BoxDecoration(color: const Color(0xffe6f2ff))),
                  SizedBox(height: 20.h),
                  Container(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("패밀리 앱",
                            style: TextStyle(
                                color: const Color(0xff0473e1),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Recipekorea",
                                fontStyle: FontStyle.normal,
                                fontSize: 19.sp),
                            textAlign: TextAlign.left),
                        SizedBox(height: 12.h),
                        Container(
                            padding: EdgeInsets.only(left: 3.w),
                            height: 67.4.h,
                            child: Row(
                              children: [
                                Container(
                                  width: 31.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 31.w,
                                        height: 33.h,
                                        child: Image.asset(
                                            'image/phishingkatLogo.png'),
                                      ),
                                      SizedBox(height: 3.5.h),
                                      Text("피싱캣",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "AppleSDGothicNeoL00",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 12.sp),
                                          textAlign: TextAlign.left)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 50.w),
                                Container(
                                    width: 42.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 31.w,
                                          height: 33.h,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3.sp)),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff0473e1),
                                                  width: 0.20000000298023224),
                                              color: const Color(0xffe8f4ff)),
                                          child: Image.asset(
                                              'image/phishingkatSIcon.png'),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text("스미싱\n출시예정",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    "AppleSDGothicNeoL00",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 12.sp),
                                            textAlign: TextAlign.center)
                                      ],
                                    )),
                                SizedBox(width: 47.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 33.w,
                                        height: 33.h,
                                        child:
                                            Image.asset('image/시티즌코난_로고.png'),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2)),
                                            border: Border.all(
                                                color: const Color(0xff707070),
                                                width: 0.5))),
                                    SizedBox(height: 4.h),
                                    Text("시티즌코난",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "AppleSDGothicNeoL00",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp),
                                        textAlign: TextAlign.left)
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(height: 89.5.h)
                ],
              )
            ],
          )
        ],
      ),
    ));
  }

  Widget profileSettingDialog(BuildContext dialogContext) {
    return Center(
      child: Align(
        alignment: Alignment(0, -0.4),
        child: Container(
          width: 135.w,
          height: 126.h,
          padding: EdgeInsets.only(top: 13.h, left: 21.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.sp),
              color: Color(0xffffffff)),
          child: Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21.sp)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("프로필 편집",
                    style: TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "HancomMalangMalang",
                        fontStyle: FontStyle.normal,
                        fontSize: 15.sp),
                    textAlign: TextAlign.left),
                SizedBox(height: 21.h),
                TextButton(
                  child: Text("앨범에서 사진 선택",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "HancomMalangMalang",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp),
                      textAlign: TextAlign.left),
                  onPressed: () {
                    getImage();
                    // TODO: 서버에 이미지 업로드
                    Navigator.pop(dialogContext);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                SizedBox(height: 25.h),
                TextButton(
                  child: Text("기본 이미지로 변경",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "HancomMalangMalang",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp),
                      textAlign: TextAlign.left),
                  onPressed: () {
                    setState(() {
                      _image = null;
                    });
                    Navigator.pop(dialogContext);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    final image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = i.File(image!.path);
    });
  }
}
