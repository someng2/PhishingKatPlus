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
            onPressed: () {},
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
              child: Column(
                children: [
                  Container(
                      child: Row(children: [
                    if (widget.subtype == '대출사기')
                      Text(
                        '${widget.info1} 님의 ',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    Text(
                      '정보 조회 결과',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ])),
                  SizedBox(height: 30.h),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                  ),
                ],
              ),
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
