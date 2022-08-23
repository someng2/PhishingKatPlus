import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/view/SignUp/SignUpPage_age.dart';
import 'package:PhishingKatPlus/view/customWidget/customProgressDot.dart';
import 'package:PhishingKatPlus/controller/PhoneVerificationController.dart';

class PhoneVerificationPage extends StatefulWidget {
  bool firstLogin;

  PhoneVerificationPage({Key? key, required this.firstLogin}) : super(key: key);

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  bool isFirstPage = true;
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController verificationNumController = TextEditingController();
  int phoneNumberLength = 0;
  bool isFirstSend = true;
  bool isSent = false;

  var verificationNum = null;
  bool isVerified = true;

  Timer? countdownTimer;

  // 인증번호 입력 시간 설정
  Duration myDuration = const Duration(minutes: 5);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    countdownTimer!.cancel();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void restartTimer() {
    stopTimer();
    setState(() => myDuration = const Duration(minutes: 5));
    startTimer();
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        Get.showSnackbar(
          const GetSnackBar(
            title: '인증번호 입력 시간 초과',
            message: '\'인증번호 다시 받기\' 버튼을 눌러주세요.',
            duration: Duration(seconds: 4),
            snackPosition: SnackPosition.BOTTOM,
          ),
        );
        setState(() {
          verificationNum = null;
        });
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');

    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

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
                                  hintText: '휴대폰 번호 입력',
                                  hintStyle: TextStyle(
                                      color: const Color(0xffb1aeae),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansCJKKR",
                                      fontSize: 16.sp)),
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
                              child: (phoneNumberLength == 10 ||
                                      phoneNumberLength == 11)
                                  ? Image.asset(
                                      'image/signUpFeedback1.png',
                                    )
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
                          Text("$minutes:$seconds",
                              style: TextStyle(
                                  color: const Color(0xff0b80f5),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "NotoSansCJKKR",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp),
                              textAlign: TextAlign.left),
                          SizedBox(width: 18.w),
                          Container(
                            width: 217.w,
                            child: TextField(
                              controller: verificationNumController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '인증번호 입력',
                                  hintStyle: TextStyle(
                                      color: const Color(0xffb1aeae),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansCJKKR",
                                      fontSize: 16.sp)
                              ),
                            ),
                          ),
                          Container(
                              width: 19.w,
                              height: 19.h,
                              child: isVerified
                                  ? Container()
                                  : Image.asset('image/signUpFeedback2.png'
                                      // ''
                                      ))
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
                          onPressed: () async {
                            if ((phoneNumberLength != 10 &&
                                phoneNumberLength != 11)) {
                              Get.showSnackbar(
                                const GetSnackBar(
                                  title: '휴대폰 번호 형식 불일치',
                                  message: '\'-\' 없이 번호만 입력해주세요. ',
                                  duration: Duration(seconds: 3),
                                  snackPosition: SnackPosition.BOTTOM,
                                ),
                              );
                            } else {
                              if (isFirstSend) {
                                startTimer();
                              } else {
                                restartTimer();
                              }
                              setState(() {
                                isSent = true;
                                isFirstSend = false;
                              });

                              print('인증번호 전송');
                              print(
                                  'phone number : ${phoneNumberController.text}');

                              verificationNum =
                                  await PhoneVerificationController()
                                      .sendSMS(phoneNumberController.text);
                              print('verificationNum: $verificationNum');
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
              print('correct verificationNum: $verificationNum');
              print(
                  'verificationNumControllertext: ${verificationNumController.text}');
              if (verificationNumController.text.length == 0) {
                Get.showSnackbar(
                  const GetSnackBar(
                    title: '인증번호 미입력',
                    message: '인증번호를 입력해주세요',
                    duration: Duration(seconds: 3),
                    snackPosition: SnackPosition.BOTTOM,
                  ),
                );
                setState(() {
                  isVerified = false;
                  print('isVerified: $isVerified');
                });
              } else if (verificationNum != verificationNumController.text) {
                print('[ERROR] 인증번호 불일치 !!');
                Get.showSnackbar(
                  const GetSnackBar(
                    title: '인증번호 불일치',
                    message: '인증번호 6자리를 다시 입력해주세요.',
                    duration: Duration(seconds: 3),
                    snackPosition: SnackPosition.BOTTOM,
                  ),
                );
                setState(() {
                  isVerified = false;
                  print('isVerified: $isVerified');
                });
              } else {
                print('인증번호 일치 :)');
                setState(() {
                  isVerified = true;
                  print('isVerified: $isVerified');
                });
                Get.off(SignUpPage_age(
                  phoneNumber: phoneNumberController.text,
                ));
              }
            },
          ),
        )
      ],
    ));
  }
}
