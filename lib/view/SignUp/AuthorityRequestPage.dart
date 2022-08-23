import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/view/SignUp/PhoneVerificationPage.dart';
import 'package:permission_handler/permission_handler.dart';

class AuthorityRequestPage extends StatefulWidget {
  const AuthorityRequestPage({Key? key}) : super(key: key);

  @override
  State<AuthorityRequestPage> createState() => _AuthorityRequestPageState();
}

class _AuthorityRequestPageState extends State<AuthorityRequestPage> {
  @override
  void initState() {
    super.initState();
    getPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 32.6.w, right: 42.4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 61.8.h,
                ),
                Text("피싱캣플러스 서비스 이용을 위해 권한을 허용해주세요",
                    style: TextStyle(
                        color: Color(0xff010101),
                        fontWeight: FontWeight.w700,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 21.sp),
                    textAlign: TextAlign.left),
                SizedBox(height: 10.h),
                // 허용하지 않아도 앱 이용이 가능하나 일부 서비스에 제한이 있을 수 있습니다
                Text("허용하지 않아도 앱 이용이 가능하나 일부 서비스에 제한이 있을 수 있습니다",
                    style: TextStyle(
                        color: const Color(0xff9b9b9b),
                        fontWeight: FontWeight.w400,
                        fontFamily: "NotoSansCJKKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.sp),
                    textAlign: TextAlign.left),
                SizedBox(height: 36.2.h),
                Text(
                  '전화',
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.sp),
                ),
                SizedBox(height: 5.h),
                Text(
                  '번호 식별, 가입자 인증 시',
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w400,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp),
                ),
                SizedBox(height: 25.h),
                Text(
                  '주소록',
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.sp),
                ),
                SizedBox(height: 5.h),
                Text(
                  '연락처 등록 정보 보기, 변경',
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w400,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp),
                ),
                SizedBox(height: 25.h),
                Text(
                  '통화기록',
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.sp),
                ),
                SizedBox(height: 5.h),
                Text(
                  '통화기록 보기, 변경',
                  style: TextStyle(
                      color: const Color(0xff010101),
                      fontWeight: FontWeight.w400,
                      fontFamily: "NotoSansCJKKR",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp),
                ),
              ],
            ),
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
                Get.off(PhoneVerificationPage(firstLogin: true,));
              },
            ),
          )
        ],
      ),
    );
  }

  getPermission() async {
    var status = await Permission.contacts.status;

    if (status.isGranted) {
      print('허락됨');
    } else if (status.isDenied) {
      print('거절됨');
     await Permission.contacts.request(); // 허락해달라고 팝업띄우는 코드
      print('contact denied: ${await Permission.contacts.isDenied}');
      if (await Permission.contacts.isDenied) {
        bool isOpened = await openAppSettings();
        print('setting open : $isOpened');
      }
      // print(request.isGranted);
      // Map<Permission, PermissionStatus> statuses = await [
      //   Permission.contacts,
      //   Permission.phone,
      // ].request();
      //
      // print(statuses[Permission.contacts]?.isGranted);
    }
  }
}
