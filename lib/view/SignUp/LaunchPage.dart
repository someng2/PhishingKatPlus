import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:voskat/view/SignUp/AuthorityRequestPage.dart';
import 'package:voskat/view/SignUp/TermsAndConditionsPage.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0473e1),
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(height: 202.8.h),
            Text("스미싱 모의훈련 서비스",
                style: TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "yspotlight",
                    fontStyle: FontStyle.normal,
                    fontSize: 19.sp),
                textAlign: TextAlign.center),
            Text("피싱캣+",
                style: TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "yspotlight",
                    fontStyle: FontStyle.normal,
                    fontSize: 56.sp),
                textAlign: TextAlign.center),
            SizedBox(height: 46.7.h),
            Container(
              width: 199.w,
              height: 35.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(17.5.sp)),
                  color: const Color(0xffffffff)),
              child: TextButton(
                child: Text("시작하기",
                    style: TextStyle(
                        color: const Color(0xff0473e1),
                        fontWeight: FontWeight.w400,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 19.sp),
                    textAlign: TextAlign.center),
                onPressed: () {
                  Get.to(AuthorityRequestPage());
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
            SizedBox(height: 334.h),
            Opacity(
              opacity: 0.800000011920929,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("시작하기를 누르면 ",
                      style: TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "NotoSansKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.sp),
                      textAlign: TextAlign.center),
                  TextButton(
                    child: Column(
                      children: [
                        Text("이용약관 및 정책",
                            style: TextStyle(
                                // decoration: TextDecoration.underline,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSansKR",
                                fontStyle: FontStyle.normal,
                                fontSize: 10.sp),
                            textAlign: TextAlign.center),
                        Container(
                            width: 60.w,
                            height: 1,
                            decoration: BoxDecoration(
                                color: const Color(0xffcce3f9)
                            )
                        )
                      ],
                    ),
                    onPressed: () {
                      Get.to(TermsAndConditionsPage());
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  Text("에 동의하는 것입니다.",
                      style: TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w400,
                          fontFamily: "NotoSansKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.sp),
                      textAlign: TextAlign.center),
                ],
              ),
            ),

          ]),
        ));
  }
}
