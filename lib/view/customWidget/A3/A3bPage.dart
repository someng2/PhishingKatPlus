// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class A3bPage extends StatefulWidget {
  const A3bPage({Key? key}) : super(key: key);

  @override
  _A3bPageState createState() => _A3bPageState();
}

class _A3bPageState extends State<A3bPage> {
  final backgroundColor = Colors.blueGrey;
  final disabledColor = Colors.white.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: backgroundColor,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HD Voice',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  '00:12',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 90.h),
            Text('118', style: TextStyle(fontSize: 28.sp, color: Colors.white)),
            SizedBox(height: 120.h),
            Container(
                // height: 200.h,
                alignment: Alignment.center,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 50.w, right: 50.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: 65.w,
                                  height: 70.h,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        padding: EdgeInsets.only(
                                          bottom: 5.h,
                                          top: 13.h,
                                        ),
                                        child: Container(
                                            height: 15.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        3.sp)),
                                            child: Image.asset(
                                                'image/recordingIcon2.png',
                                                color: backgroundColor)),
                                        // decoration: BoxDecoration(
                                        //     border: Border.all())
                                      ),
                                      Text('녹음',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  decoration:
                                      BoxDecoration(border: Border.all())),
                              Container(
                                width: 65.w,
                                height: 70.h,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40.h,
                                      padding: EdgeInsets.only(
                                        top: 10.h,
                                        bottom: 5.h,
                                      ),
                                      child: Image.asset('image/videoIcon.png',
                                          width: 24.w,
                                          fit: BoxFit.fitWidth,
                                          color: disabledColor),
                                      // decoration: BoxDecoration(
                                      //     border: Border.all())
                                    ),
                                    Text('영상통화',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: disabledColor,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                decoration: BoxDecoration(border: Border.all()),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  width: 65.w,
                                  height: 70.h,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        padding: EdgeInsets.only(
                                          top: 10.h,
                                          bottom: 5.h,
                                        ),
                                        child: Image.asset('image/bluetoothIcon.png',
                                            width: 22.w,
                                            // fit: BoxFit.fitWidth,
                                            color: Colors.white),
                                        // decoration: BoxDecoration(
                                        //     border: Border.all())
                                      ),
                                      Text('블루투스',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  decoration:
                                      BoxDecoration(border: Border.all())),
                            ])),
                    SizedBox(height: 20.h),
                    Container(
                        padding: EdgeInsets.only(left: 50.w, right: 50.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 65.w,
                                  height: 70.h,
                                  child: Text('스피커',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                  decoration:
                                      BoxDecoration(border: Border.all())),
                              Container(
                                width: 65.w,
                                height: 70.h,
                                child: Text('내 소리 차단',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                                decoration: BoxDecoration(border: Border.all()),
                              ),
                              Container(
                                  width: 65.w,
                                  height: 70.h,
                                  child: Text('키패드',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                  decoration:
                                      BoxDecoration(border: Border.all())),
                            ])),
                  ],
                )),
            SizedBox(height: 50.h),
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(border: Border.all()),
            )
          ]),
        ));
  }
}
