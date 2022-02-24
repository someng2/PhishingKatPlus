// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class A2b_vaccineAppPage extends StatefulWidget {
  String appIcon;
  Color appColor;

  A2b_vaccineAppPage({Key? key, required this.appIcon, required this.appColor})
      : super(key: key);

  @override
  _A2b_vaccineAppPageState createState() => _A2b_vaccineAppPageState();
}

class _A2b_vaccineAppPageState extends State<A2b_vaccineAppPage> {
  String appBarTitle = '';
  bool startClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle, style: TextStyle(fontSize: 19.sp)),
          centerTitle: true,
          leading: Container(
              padding: EdgeInsets.only(top: 8.h, bottom: 3.h),
              child: Image.asset(widget.appIcon)),
          elevation: 0,
        ),
        // backgroundColor: Colors.blue,
        body: startClicked
            ? Container(
                width: 360.w,
                padding: EdgeInsets.only(top: 150.h, bottom: 100.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // progress circle
                    Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(color: Colors.black),
                    ),



                    Column(
                      children: [
                        // progress percent
                        Text('90%', style: TextStyle(fontSize: 30.sp)),

                        Text('악성 앱 검사 중...'),
                      ],
                    )
                  ],
                ))
            : Container(
                width: 360.w,
                padding: EdgeInsets.only(top: 150.h),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 270.h,
                          width: 270.w,
                          decoration: new BoxDecoration(
                            color: widget.appColor,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            width: 250.w,
                            height: 250.h,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  startClicked = true;
                                  appBarTitle = '악성 검사 실행';
                                });
                              },
                              child: Text('검사하기',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.sp)),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.white, //<-- Button color
                                onPrimary: Colors.blue
                                    .withOpacity(0.8), // <-- Splash color
                              ),
                            ),
                          )),
                    ]),
              ));
  }
}
