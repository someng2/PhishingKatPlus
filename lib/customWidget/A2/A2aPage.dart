// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/customWidget/vaccineApp.dart';

class A2aPage extends StatefulWidget {
  String subtype;
  String appName;
  String info1;
  String info2_1;
  String info2_2;
  A2aPage(
      {Key? key,
      required this.subtype,
      required this.appName,
      required this.info1,
      required this.info2_1,
      required this.info2_2})
      : super(key: key);

  @override
  State<A2aPage> createState() => _A2aPageState();
}

class _A2aPageState extends State<A2aPage> {
  bool _showAd = false;

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showAd = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appName),
        // leading: Container(),
        actions: [
          // U3-a
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              //TODO: 시뮬레이션 결과 화면으로
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: (widget.subtype == '대출사기')
                  ? Column(
                      children: [
                        Container(

                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              widget.info1,
                              style: TextStyle(
                                  fontSize: 19.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              ' 님의 신청 가능한 대출 상품',
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                        SizedBox(height: 30.h),
                        Container(
                          padding: EdgeInsets.only(bottom: 15.h),
                            child: Row(
                          children: [
                            Text('상품명: [정부지원 대환대출]',style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w500),),
                          ],
                        )),
                        Container(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: Row(
                          children: [
                            Text('담당자: 김OO', style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w500),),
                          ],
                        )),
                        Container(
                            child: Row(
                              children: [
                                Text('문의: 010-xxxx-xxxx', style: TextStyle(
                                    fontSize: 15.sp, fontWeight: FontWeight.w500),),
                              ],
                            )),
                      ],
                    )
                  : Container(),
            ),
            // SizedBox(height: 40),

            // SizedBox(height: 200.h),
            _showAd ? vaccineApp() : Container(height: 90.h)
          ],
        ),
      ),
    );
  }
}
