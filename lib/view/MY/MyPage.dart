import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 24.h),
        Stack(
          children: [
            Container(
              width: 360.w,
              height: 278.h,
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
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 6.h),
                          width: 14.sp,
                          child: Icon(
                            Icons.close,
                          )),
                      SizedBox(width: 293.h),
                      Container(
                        width: 24.sp,
                        child: Image.asset('image/profileSettingIcon.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 11.h),
                Center(
                  child: Stack(alignment: Alignment.center, children: [
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
                      // TODO: 프로필 이미지 변경 구현
                      child: Image.asset(
                        'image/defaultProfileImage.png',
                      ),
                    )
                  ]),
                ),
                // Center(
                //   child: Container(
                //       width: 80.sp,
                //       height: 80.sp,
                //       child: Image.asset('image/defaultProfileImage.png')),
                // ),
                SizedBox(height: 8.h),
                Center(
                  child: Text("홍길동",
                      style: TextStyle(
                          color: const Color(0xff0473e1),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Recipekorea",
                          fontStyle: FontStyle.normal,
                          fontSize: 19.sp),
                      textAlign: TextAlign.left),
                ),
                SizedBox(height: 47.h),
                Container(
                  padding: EdgeInsets.only(left: 25.w, right: 19.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("지난 활동",
                          style: TextStyle(
                              color: const Color(0xff0473e1),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Recipekorea",
                              fontStyle: FontStyle.normal,
                              fontSize: 19.sp),
                          textAlign: TextAlign.left),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        width: 360.w,
                        height: 130.h,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.sp)),
                                    child: Image.asset(
                                      'image/customSimulation.png',
                                      fit: BoxFit.fitHeight,
                                      width: 134.w,
                                      height: 130.h,
                                    ),
                                  ),
                                  Container(
                                    width: 134.w,
                                    height: 130.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.sp)),
                                        color: Colors.black.withOpacity(0.3)),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 108.h, left: 29.w),
                                    alignment: Alignment.center,
                                    child: Text("맞춤형 모의체험",
                                        style: TextStyle(
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "AppleSDGothicNeoSB00",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp),
                                        textAlign: TextAlign.center),
                                  )
                                ]),
                              ],
                            ),
                            SizedBox(width: 48.w),
                            Stack(children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.sp)),
                                child: Image.asset(
                                  'image/categorySimulation.png',
                                  fit: BoxFit.fitHeight,
                                  width: 134.w,
                                  height: 130.h,
                                ),
                              ),
                              Container(
                                width: 134.w,
                                height: 130.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.sp)),
                                    color: Colors.black.withOpacity(0.3)),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(top: 108.h, left: 33.w),
                                alignment: Alignment.center,
                                child: Text("유형별 모의체험",
                                    style: TextStyle(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "AppleSDGothicNeoSB00",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12.sp),
                                    textAlign: TextAlign.center),
                              )
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          SizedBox(width: 10.w),
                          Text("2022. 02. 15",
                              style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "AppleSDGothicNeoL00",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.left),
                          SizedBox(
                            width: 30.w,
                          ),
                          Text("00점",
                              style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "AppleSDGothicNeoL00",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.left),
                          SizedBox(width: 70.w),

                          /// zeplin이랑 width 다름
                          Text("2022. 02. 15",
                              style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "AppleSDGothicNeoL00",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.left),
                          SizedBox(
                            width: 30.w,
                          ),
                          Text("00%",
                              style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "AppleSDGothicNeoL00",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.left),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Container(
                    width: 360.w,
                    height: 10.h,
                    decoration: BoxDecoration(color: const Color(0xffe6f2ff))),
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
                            SizedBox(width: 74.w),
                            Container(
                              width: 83.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.sp)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0, 0),
                                        blurRadius: 8,
                                        spreadRadius: 0)
                                  ],
                                  color: const Color(0xffffffff)),
                              child: TextButton(
                                child: Text("과거 훈련 이력",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "HancomMalangMalang",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12.sp),
                                    textAlign: TextAlign.left),
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            )
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
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    children: [
                      SizedBox(height: 12.h),
                      Container(
                        height: 22.h,
                        child: Row(
                          children: [
                            Container(
                              width: 22.sp,
                              height: 22.sp,
                              child: Image.asset('image/thumbsUpIcon.png'),
                            ),
                            SizedBox(width: 3.w),
                            Container(
                              alignment: Alignment.center,
                              width: 50.w,
                              height: 17.h,
                              margin: EdgeInsets.only(top: 2.h),
                              decoration:
                                  BoxDecoration(color: const Color(0xfffffcd3)),
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
                            SizedBox(width: 10.w),
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
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 20.h,
                        child: Row(
                          children: [
                            Container(
                              width: 20.sp,
                              height: 20.sp,
                              child: Image.asset('image/badMoodIcon.png'),
                            ),
                            SizedBox(width: 4.w),
                            Container(
                              alignment: Alignment.center,
                              width: 50.w,
                              height: 17.h,
                              margin: EdgeInsets.only(top: 1.h),
                              decoration:
                                  BoxDecoration(color: const Color(0xffffdcdc)),
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
                            SizedBox(width: 10.w),
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
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
