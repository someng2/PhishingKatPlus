// ignore_for_file: file_names
/// A3-b

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/tempData/userActionData.dart';
import 'package:PhishingKatPlus/view/Simulation/SimulationPage.dart';

import 'package:PhishingKatPlus/view/customWidget/A3/MessagePage.dart';


import 'package:PhishingKatPlus/view/customWidget/customDialog.dart';

class ReportCallPage extends StatefulWidget {

  final String sid;
  const ReportCallPage({Key? key, required this.sid}) : super(key: key);

  @override
  _ReportCallPageState createState() => _ReportCallPageState();
}

class _ReportCallPageState extends State<ReportCallPage> {
  final backgroundColor = Colors.blueGrey;
  final disabledColor = Colors.white.withOpacity(0.5);

  Timer? _timer;
  // var _time = 0;
  int count = 0;
  double dialog_height = 187;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_timer) {
      if (count < 5) {
        setState(() {
          count++;
        });
      } else {
        _timer.cancel();

        Get.off(MessagePage(
          sid: widget.sid,
        ));
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 681 - dialog_height),
                  child: Dialog(
                    // insetPadding: EdgeInsets.only(bottom: 300.h,),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                        width: 251,
                        height: dialog_height,
                        padding: EdgeInsets.only(
                          top: 12,
                          left: 20,
                          right: 20,
                          // bottom: 17,
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 70,
                                height: 25,
                                child: Image.asset(
                                  AppContentsController().getContents('ac_21'),
                                  fit: BoxFit.fitWidth,
                                )),
                            SizedBox(height: 17),
                            Container(
                                width: 209,

                                child: Text(
                                  AppContentsController().getContents('ac_22'),
                                  style: TextStyle(fontSize: 13),
                                )),
                            SizedBox(height: 29),
                            Container(
                              width: 76,
                              height: 17,
                              child: TextButton(
                                child: Text(
                                    AppContentsController()
                                        .getContents('ac_23'),
                                    style: TextStyle(
                                        color: Color(0xff0473e1),
                                        fontSize: 12)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              );
            });
      }
    });
    super.initState();
  }

  //
  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      color: backgroundColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
            Row(
              children: [
                Text(
                  '02:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${count + 11}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 90.h),
        Text(AppContentsController().getContents('ac_20'),
            style: TextStyle(fontSize: 28.sp, color: Colors.white)),
        SizedBox(height: 190.h),
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
                                              BorderRadius.circular(3.sp)),
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
                            // decoration:
                            //     BoxDecoration(border: Border.all())
                          ),
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
                            // decoration: BoxDecoration(border: Border.all()),
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
                            // decoration:
                            //     BoxDecoration(border: Border.all())
                          ),
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
                            child: Column(
                              children: [
                                Container(
                                  height: 40.h,
                                  padding: EdgeInsets.only(
                                    top: 10.h,
                                    bottom: 5.h,
                                  ),
                                  child: Image.asset('image/speakerIcon.png',
                                      width: 21.w,
                                      // fit: BoxFit.fitWidth,
                                      color: Colors.white),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all())
                                ),
                                Text('스피커',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            // decoration:
                            //     BoxDecoration(border: Border.all())
                          ),
                          Container(
                            width: 65.w,
                            height: 70.h,
                            child: Column(
                              children: [
                                Container(
                                  height: 40.h,
                                  padding: EdgeInsets.only(
                                    top: 5.h,
                                    // bottom: 5.h,
                                  ),
                                  child: Image.asset('image/muteIcon.png',
                                      width: 30.w,
                                      // height: 30.h,
                                      // fit: BoxFit.contain,
                                      color: disabledColor),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all())
                                ),
                                Text('내 소리 차단',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: disabledColor,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            // decoration: BoxDecoration(border: Border.all()),
                          ),
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
                                  child: Image.asset('image/keypadIcon.png',
                                      width: 22.w,
                                      // fit: BoxFit.fitWidth,
                                      color: Colors.white),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all())
                                ),
                                Text('키패드',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            // decoration:
                            //     BoxDecoration(border: Border.all())
                          ),
                        ])),
              ],
            )),
        SizedBox(height: 70.h),
        Container(
          width: 60.w,
          height: 60.h,
          child: Container(
            // width: 10.w,
            // height: 10.h,
            padding: EdgeInsets.all(10.sp),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Image.asset(
              'image/endCallIcon.png',
              color: Colors.redAccent,
            ),
          ),
          // decoration: BoxDecoration(border: Border.all()),
        )
      ]),
    ));
  }
}
