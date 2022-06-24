import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/view/SignUp/SignUpPage_age.dart';
import 'package:voskat/view/customWidget/customProgressDot.dart';
import 'package:voskat/controller/PhoneVerificationController.dart';

class PhoneVerificationPage extends StatefulWidget {
  bool firstLogin;

  PhoneVerificationPage({Key? key, required this.firstLogin}) : super(key: key);

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  bool isFirstPage = true;
  TextEditingController phoneNumberController = TextEditingController();
  int phoneNumberLength = 0;
  bool isFirstSend = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 51.h,
            ),
            CustomProgressDot(isFirstPage),
            SizedBox(height: 27.8.h),
            Container(
              padding: EdgeInsets.only(left: 32.6.w),
              child: Text(
                  widget.firstLogin
                      ? "피싱 피해를 막기 위해\n휴대폰 본인인증이 필요해요"
                      : "접속한 지 오래되어\n휴대폰 재인증이 필요해요",
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 21.sp),
                  textAlign: TextAlign.left),
            ),
            SizedBox(height: 26.2.h),
            Container(
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              child: Column(
                children: [
                  Container(
                      width: 310.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                          border: Border.all(
                              color: const Color(0xff0b80f5), width: 1.5.sp),
                          color: const Color(0xffffffff)),
                      child: Row(
                        children: [
                          SizedBox(width: 15.6.w),
                          Text("+82",
                              style: TextStyle(
                                  color: const Color(0xff777777),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.sp),
                              textAlign: TextAlign.left),
                          SizedBox(width: 18.w),
                          Container(
                            width: 218.w,
                            child: TextField(
                              controller: phoneNumberController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '휴대폰 번호 입력'),
                              onChanged: (text) {
                                setState(() {
                                  if (double.tryParse(text) != null) {
                                    phoneNumberLength = text.length;
                                  }
                                  print(
                                      'phoneNumberLength: $phoneNumberLength');
                                });
                              },
                            ),
                          ),
                          Container(
                              width: 16.1240234375.w,
                              height: 11.58544921875.h,
                              child: (phoneNumberLength == 7 ||
                                      phoneNumberLength == 8)
                                  ? Image.asset('image/signUpFeedback1.png',)
                                  : Container())
                        ],
                      )),
                  SizedBox(height: 39.h),
                  Container(
                      width: 310.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                          border: Border.all(
                              color: const Color(0xff0b80f5), width: 1.5.sp),
                          color: const Color(0xffffffff)),
                      child: Row(
                        children: [
                          SizedBox(width: 15.6.w),
                          Text("04:30",
                              style: TextStyle(
                                  color: const Color(0xff0b80f5),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.left),
                          SizedBox(width: 18.w),
                          Container(
                            width: 218.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '인증번호 입력'),
                            ),
                          ),
                          // TODO: 인증번호 틀릴 시, 아이콘 추가
                          Container(
                              width: 19.w,
                              height: 19.h,
                              child: Image.asset('image/signUpFeedback2.png'))
                        ],
                      )),
                  SizedBox(height: 4.8.h),
                  Container(
                    width: 360.w,
                    padding: EdgeInsets.only(right: 1.6.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text(
                            isFirstSend ? "인증번호 전송" : "인증번호 다시 받기",
                            style: TextStyle(
                                color: const Color(0xff0080ff),
                                fontWeight: FontWeight.w400,
                                fontFamily: "NotoSansCJKKR",
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline,
                                fontSize: 13.sp),
                          ),
                          onPressed: () {
                            if ((phoneNumberLength == 7 ||
                                phoneNumberLength == 8)) {
                              setState(() {
                                isFirstSend = false;
                              });
                              // TODO: 인증번호 전송

                              PhoneVerificationController()
                                  .sendSMS(phoneNumberController.text);
                            }
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(right: 1.6.w),
                        //     width: isFirstSend ? 69.w : 85.w,
                        //     height: 1.h,
                        //     decoration:
                        //         BoxDecoration(color: const Color(0xff0080ff)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 388.h),
          ],
        ),
        Container(
          width: 360.w,
          height: 60.h,
          decoration: BoxDecoration(color: Color(0xff0473e1)),
          child: TextButton(
            child: Text("확인",
                style: TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "NotoSansCJKKR",
                    fontStyle: FontStyle.normal,
                    fontSize: 19.sp),
                textAlign: TextAlign.center),
            onPressed: () {
              // TODO: 권한 허용 절차

              Get.to(SignUpPage_age());
            },
          ),
        )
      ],
    ));
  }
}
