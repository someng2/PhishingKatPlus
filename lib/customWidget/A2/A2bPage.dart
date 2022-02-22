// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class A2bPage extends StatefulWidget {
  const A2bPage({Key? key}) : super(key: key);

  @override
  _A2bPageState createState() => _A2bPageState();
}

class _A2bPageState extends State<A2bPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
          child: Column(
            children: [
              Container(
                  height: 180.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 55.w,
                          child: Image.asset('image/v3appLogo.webp')),
                      SizedBox(width: 25.w),
                      Container(
                        width: 170.w,
                        height: 160.h,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 120.h,
                                  width: 140.w,
                                  child: Text(
                                    'V3 Mobile Security-백신/클리너/최적화',
                                    style: TextStyle(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Container(
                                  height: 20.h,
                                  child: Text('AhnLab Inc.',
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontWeight: FontWeight.w700))),
                              Container(
                                  height: 20.h, child: Text('광고 포함 ∙ 인앱 구매')),
                            ]),
                      )
                    ],
                  )),
              Container(
                  height: 100.h,
                  padding: EdgeInsets.only(top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 80.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('4.6 ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                  Icon(Icons.star, size: 15.sp)
                                ],
                              ),
                              Text('리뷰 10만개')
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.only(
                            left: 15.w, right: 15.w, top: 20.h, bottom: 20.h),
                        child: VerticalDivider(
                          thickness: 1,
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                          width: 80.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '1000만회',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.sp),
                                          // softWrap: true,
                                        ),
                                        Text(
                                          '이상',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.sp),
                                          // softWrap: true,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Text('다운로드')
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.only(
                            left: 15.w, right: 15.w, top: 20.h, bottom: 20.h),
                        child: VerticalDivider(
                            thickness: 1, width: 0.3, color: Colors.grey),
                      ),
                      Container(
                          width: 80.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'image/number3Icon.png',
                                color: Colors.green,
                              ),
                              Text('만 3세 이상')
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 20.h),
              Container(
                  width: 320.w,
                  decoration: BoxDecoration(color: Colors.teal),
                  child: TextButton(
                    child: Text('설치', style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ))
            ],
          ),
        ));
  }
}
