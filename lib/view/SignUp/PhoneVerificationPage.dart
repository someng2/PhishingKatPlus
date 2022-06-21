import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneVerificationPage extends StatefulWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 26.h,
        ),
        Container(height: 8.h),
        SizedBox(height: 27.8.h),
        Container(
          padding: EdgeInsets.only(left: 32.6.w),
          child: Text("피싱 피해를 막기 위해\n휴대폰 본인인증이 필요해요",
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
                width: 310.w, height: 52.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(8.sp)
                  ),
                  border: Border.all(
                      color: const Color(0xff0b80f5),
                      width: 1.5.sp
                  ),
                  color: const Color(0xffffffff)
              ),
                child: Row(
                  children: [
                    SizedBox(width: 15.6.w),
                    Text(
                        "+82",
                        style: TextStyle(
                            color:  const Color(0xff777777),
                            fontWeight: FontWeight.w700,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.sp
                        ),
                        textAlign: TextAlign.left
                    ),
                    SizedBox(width: 18.w),
                    Container(
                      width: 230.w,
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none,hintText: '휴대폰 번호 입력'),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 39.h),
              Container(
                  width: 310.w, height: 52.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(8.sp)
                      ),
                      border: Border.all(
                          color: const Color(0xff0b80f5),
                          width: 1.5.sp
                      ),
                      color: const Color(0xffffffff)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15.6.w),
                      Text(
                          "04:30",
                          style: TextStyle(
                              color:  const Color(0xff0b80f5),
                              fontWeight: FontWeight.w700,
                              fontFamily: "NotoSansCJKKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12.sp
                          ),
                          textAlign: TextAlign.left
                      ),
                      SizedBox(width: 18.w),
                      Container(
                        width: 230.w,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none,hintText: '인증번호 입력'),
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
        SizedBox(height: 388.h),
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


              // Get.to(PhoneVerificationPage());
            },
          ),
        )
      ],
    ));
  }
}
