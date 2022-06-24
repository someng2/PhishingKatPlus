// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/controller/AppContentsControllerDB.dart';
import 'package:voskat/tempData/userData.dart';
import 'package:voskat/view/SignUp/SignUpPage_age.dart';


class DBTest extends StatefulWidget {
  const DBTest({Key? key}) : super(key: key);

  @override
  _DBTestState createState() => _DBTestState();
}

class _DBTestState extends State<DBTest> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(46.5.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      // TODO: 주석처리 된걸로 돌아가
                        left: 118.w,
                        // left: 80.w,
                        top: 11.5.h),
                    child: Text(
                      "DBTest",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "designhouse",
                          fontStyle: FontStyle.normal,
                          fontSize: 23.sp),
                    ),
                  ),

                ],
              ),
            ),

            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white,
            shape: Border(
                bottom: BorderSide(color: Color(0xffe7e7e7), width: 2.h)),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [Container(
              padding: EdgeInsets.only(left: 25.w, right: 24.w),
              child: Column(
                children: [
                  TextButton(
                    child: Text(
                      "GetContents()",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "designhouse",
                          fontStyle: FontStyle.normal,
                          fontSize: 23.sp),
                    ),
                    onPressed: (){
                      print(AppContentsControllerDB.getContents());
                    },
                  ),
                  TextButton(
                    child: Text(
                      "AddContents()",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "designhouse",
                          fontStyle: FontStyle.normal,
                          fontSize: 23.sp),
                    ),
                    onPressed: (){
                      AppContentsControllerDB.addContents(
                          'ac_999',
                          'test',
                          'test',
                          0,
                          'test',
                          'test',
                          false,
                          DateTime.now(),
                          DateTime.now()
                      );
                    },
                  )
                ],
              )
            )],
          ),
        ));
  }

}
