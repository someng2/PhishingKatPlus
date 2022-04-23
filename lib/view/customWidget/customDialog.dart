// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/userActionData.dart';
import 'package:get/get.dart';

import 'package:voskat/view/customWidget/A3/A3bPage.dart';
import 'package:voskat/model/simulation/userAction.dart';
import 'package:voskat/controller/ScenarioController.dart';

class CustomDialog extends StatelessWidget {
  final String sid;
  final String aid;
  UserAction userCancelAction;
  UserAction userOkAction;

  CustomDialog(
      {Key? key,
      required this.sid,
      required this.aid,
      required this.userOkAction,
      required this.userCancelAction})
      : super(key: key);

  late String title = 'Title';
  late String description = 'description';

  @override
  Widget build(BuildContext context) {
    var scenario = ScenarioController().getScenario(sid);

    if (aid == 'A1-b') {
      title = '수신 차단';
      description = '이 번호의 전화 및 메시지를 더이상 받지 않습니다.';
    }

    if (aid == 'A2-c') {
      title = '신고하기';
      description = '이 번호를 한국인터넷 진흥원(118)에 신고하시겠습니까?';
    }

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 537.h),
        child: Dialog(
          // insetPadding: EdgeInsets.only(bottom: 300.h,),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
              width: 251,
              height: 144,
              padding: EdgeInsets.only(
                top: 19,
                left: 21,
                right: 21,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 25.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            if (aid == 'A2-c')
                              Container(
                              width: 70.w,
                              height: 25.h,
                              child: Image.asset('image/kisaLogo.png', fit: BoxFit.fitWidth),
                              // decoration: BoxDecoration(border: Border.all()),
                            ),
                            SizedBox(width: 4.w),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    width: 209.w,
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Container(
                          width: 89,
                          height: 26,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(13)),
                          child: TextButton(
                            child: Text(
                              '취소',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.only(bottom: 1)),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              // overlayColor: MaterialStateColor.resolveWith(
                              //         (states) => Color(0xff0473e1)),
                              // shape:
                              // MaterialStateProperty.all<RoundedRectangleBorder>(
                              //   RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(13.sp),
                              //   ),
                              // ),
                            ),
                            onPressed: () {
                              scenario.userActionSequence.add(userCancelAction);

                              Navigator.pop(context);
                            },
                          ),
                        ),
                        // SizedBox(width: 31),
                        Container(
                          width: 89,
                          height: 26,
                          decoration: BoxDecoration(
                              color: Color(0xff0473e1),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextButton(
                            child: Text(
                              title,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.only(bottom: 1)),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              // overlayColor: MaterialStateColor.resolveWith(
                              //         (states) => Color(0xff0473e1)),
                              // shape:
                              // MaterialStateProperty.all<RoundedRectangleBorder>(
                              //   RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(13.sp),
                              //   ),
                              // ),
                            ),
                            onPressed: () {
                              scenario.userActionSequence.add(userOkAction);

                              Navigator.pop(context);
                              if (aid == 'A1-b') {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialog(
                                        sid: scenario.sid,
                                        aid: 'A2-c',
                                        userOkAction: U3_d,
                                        userCancelAction: U3_e,
                                      );
                                    });
                              }
                              else if (aid == 'A2-c') {
                                Get.to(A3bPage());
                              }
                            },
                          ),
                        )
                      ]))
                ],
              )),
        ),
      ),
    );
  }
}
