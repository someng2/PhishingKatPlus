// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class A2bPage extends StatefulWidget {
  const A2bPage({Key? key}) : super(key: key);

  @override
  _A2bPageState createState() => _A2bPageState();
}

class _A2bPageState extends State<A2bPage> with TickerProviderStateMixin {
  bool downloadPressed = false;
  bool downloadComplete = false;

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.navigate_before),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 24.w),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 20.w),
                  Image.asset('image/threeDots2.png', height: 16.h)
                ],
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
          child: Column(
            children: [
              Container(
                  height: 160.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100.w,
                        height: 100.h,
                        // padding: EdgeInsets.only(left: 15.w),
                        child: Stack(children: [
                          downloadPressed
                              ? Container(
                                  // alignment: Alignment.center,
                                  // margin: EdgeInsets.only(right: 30.w),
                                  width: 80.w,
                                  height: 80.w,
                                  child: CircularProgressIndicator(
                                      value: controller.value,
                                      semanticsLabel:
                                          'Linear progress indicator',
                                      strokeWidth: 3.w,
                                      color: Colors.teal),
                                )
                              : Container(),
                          Container(
                              width: 80.w,
                              padding: downloadPressed
                                  ? EdgeInsets.only(top: 23.h)
                                  : EdgeInsets.only(left: 15.w),
                              child: Row(
                                mainAxisAlignment: downloadPressed
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.start,
                                crossAxisAlignment: downloadPressed
                                    ? CrossAxisAlignment.center
                                    : CrossAxisAlignment.start,
                                children: [
                                  Image.asset('image/v3appLogo.webp',
                                      width: downloadPressed ? 35.w : 65.w),
                                ],
                              )),
                        ]),
                      ),
                      SizedBox(width: downloadPressed ? 40.w : 25.w),
                      Container(
                        width: 170.w,
                        height: 160.h,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 100.h,
                                  width: 150.w,
                                  child: Text(
                                    'V3 Mobile Security-백신/클리너/최적화',
                                    style: TextStyle(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Container(
                                  height: 20.h,
                                  child: downloadPressed
                                      ? Text('설치 중...',
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                          ))
                                      : Text('AhnLab Inc.',
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w600))),
                              Container(
                                  height: 20.h,
                                  child: (downloadPressed)
                                      ? Container()
                                      : Text('광고 포함 ∙ 인앱 구매',
                                          style: TextStyle(fontSize: 14.sp))),
                            ]),
                      )
                    ],
                  )),

              // 설치 전
              !downloadPressed
                  ? !downloadComplete
                      ? Column(
                          children: [
                            Container(
                                height: 100.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 80.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('4.6 ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                Icon(Icons.star, size: 15.sp)
                                              ],
                                            ),
                                            Text('리뷰 10만개')
                                          ],
                                        )),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.w,
                                          right: 15.w,
                                          top: 27.h,
                                          bottom: 27.h),
                                      child: VerticalDivider(
                                          thickness: 1,
                                          width: 0.3,
                                          color: Colors.grey.withOpacity(0.7)),
                                    ),
                                    Container(
                                        width: 80.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 80.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '1000만회',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.sp),
                                                        // softWrap: true,
                                                      ),
                                                      Text(
                                                        '이상',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.sp),
                                                        // softWrap: true,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text('다운로드',
                                                style:
                                                    TextStyle(fontSize: 14.sp))
                                          ],
                                        )),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.w,
                                          right: 15.w,
                                          top: 27.h,
                                          bottom: 27.h),
                                      child: VerticalDivider(
                                          thickness: 1,
                                          width: 0.3,
                                          color: Colors.grey.withOpacity(0.7)),
                                    ),
                                    Container(
                                        width: 80.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'image/number3Icon.png',
                                              color: Colors.teal,
                                            ),
                                            Text('만 3세 이상')
                                          ],
                                        ))
                                  ],
                                )),
                            SizedBox(height: 20.h),
                            Container(
                                width: 320.w,
                                height: 41.h,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(5.sp)),
                                child: TextButton(
                                  child: Text('설치',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp)),
                                  onPressed: () {
                                    setState(() {
                                      downloadPressed = true;
                                      Timer(Duration(seconds: 5), () {
                                        setState(() {});
                                        print('Time Off!');
                                        downloadPressed = false;
                                        downloadComplete = true;
                                      });
                                    });
                                  },
                                ))
                          ],
                        )
                      :
                      // 설치 이후
                      Container(
                          height: 43.h,
                          child: Row(
                            children: [
                              Container(
                                  width: 145.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.sp),
                                      border: Border.all(
                                          color:
                                              Colors.black.withOpacity(0.4))),
                                  child: TextButton(
                                    child: Text('제거',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 15.sp)),
                                    onPressed: () {},
                                  )),
                              SizedBox(width: 20.w),
                              Container(
                                  width: 145.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.sp),
                                      color: Colors.teal),
                                  child: TextButton(
                                    child: Text('열기',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.sp)),
                                    onPressed: () {},
                                  ))
                            ],
                          ))

                  // 설치버튼 클릭 후
                  : Column(
                      children: [
                        Container(
                            height: 43.h,
                            child: Row(
                              children: [
                                Container(
                                    width: 145.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.sp),
                                        border: Border.all(
                                            color:
                                                Colors.black.withOpacity(0.4))),
                                    child: TextButton(
                                      child: Text('취소',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp)),
                                      onPressed: () {},
                                    )),
                                SizedBox(width: 20.w),
                                Container(
                                    width: 145.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.sp),
                                        color: Colors.grey.withOpacity(0.4)),
                                    child: TextButton(
                                      child: Text('열기',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp)),
                                      onPressed: () {},
                                    ))
                              ],
                            ))
                      ],
                    ),
              SizedBox(height: 40.h),

              // 설치 버튼 클릭 후 & 설치 후
              (downloadPressed | downloadComplete)
                  ? Column(children: [
                      Row(
                        children: [
                          Text('광고 • '),
                          Text('추천', style: TextStyle(fontSize: 19.sp))
                        ],
                      ),
                      Container(
                        height: 130.h,
                        child: Row(children: []),
                      ),
                      SizedBox(height: 30.h),
                      Row(children: [
                        Text('이런 앱은 어떠세요 ?', style: TextStyle(fontSize: 19.sp))
                      ]),
                      Container(
                        height: 130.h,
                        child: Row(children: []),
                      ),
                    ])
                  : Column()
            ],
          ),
        ));
  }
}
