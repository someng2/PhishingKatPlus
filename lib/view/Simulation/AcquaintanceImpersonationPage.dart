// ignore_for_file: file_names

import 'dart:io';

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/controller/UserActionController.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/view/Simulation/SimulationResultPage.dart';

import 'package:voskat/controller/PairController.dart';
import 'package:voskat/controller/AppContentsController.dart';

class AcquaintanceImpersonationPage extends StatefulWidget {
  final String sid;
  final String aid;
  final List<String> messageList;

  const AcquaintanceImpersonationPage(
      {Key? key,
      required this.sid,
      required this.aid,
      required this.messageList})
      : super(key: key);

  @override
  _AcquaintanceImpersonationPageState createState() =>
      _AcquaintanceImpersonationPageState();
}

class _AcquaintanceImpersonationPageState
    extends State<AcquaintanceImpersonationPage> {
  final ScenarioController _scenarioController = ScenarioController();
  List<String> messageList = [];
  final ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    messageList += widget.messageList;

    ClassBuilder.register<SimulationResultPage>(() => SimulationResultPage(
          sid: widget.sid,
        ));
  }

  // @override
  Widget build(BuildContext context) {
    print(messageList.last);
    var ids = AppContentsController().getAppContentIds(messageList.last);
    Scenario scenario = _scenarioController.getScenario(widget.sid);
    messageList.remove(messageList.last);
    messageList.add(ids[0]);

    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        title: Text('',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400)),
        titleSpacing: 0,
        actions: [
          Container(
            width: 18.w,
            child: TextButton(
              child: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
          SizedBox(width: 20.w),
          Container(
            width: 21.w,
            child: TextButton(
              child: Image.asset('image/reportIcon.png'),
              onPressed: () {},
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
          SizedBox(width: 20.w),
          Container(
              width: 19.w,
              // height: 15.h,
              padding: EdgeInsets.only(
                bottom: 6.h,
                top: 5.h,
              ),
              child: TextButton(
                child: Image.asset('image/menu.png'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              )),
          SizedBox(width: 15.w),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 412.w,
            child: ListView.builder(
              controller: _scrollController,
              itemBuilder: (context, position) {
                return GestureDetector(
                  child: Card(
                      elevation: 0,
                      child: (AppContentsController()
                                  .getContentsType(messageList[position]) ==
                              'Ytext')
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Image.asset(
                                        'image/messageProfile.png',
                                        width: 45.w)),
                                SizedBox(width: 5.w),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 235.w,
                                      padding: EdgeInsets.all(10.sp),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffa1a1a1),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: Text(
                                        AppContentsController()
                                            .getContents(messageList[position]),
                                        style: TextStyle(
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "NotoSansCJKKR",
                                            fontStyle: FontStyle.normal,
                                            fontSize: 13.0),
                                      ),
                                    ),
                                    Container(
                                      // width: 50,
                                      child: Text('오후 2:08',
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              color: Colors.black
                                                  .withOpacity(0.6))),
                                      padding:
                                          EdgeInsets.only(bottom: 5, left: 10),
                                    )
                                  ],
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10.sp),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffa1a1a1),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppContentsController().getContents(
                                                messageList[position]),
                                            style: TextStyle(
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "NotoSansCJKKR",
                                                fontStyle: FontStyle.normal,
                                                fontSize: 13.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                );
              },
              itemCount: messageList.length,
            ),
          ),
          Container(
            width: 360,
            height: 196,
            decoration: BoxDecoration(color: const Color(0xff818181)),
            child: Column(children: [
              SizedBox(height: 39.5.h),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: const Color(0xfff8f8f8)),
                  child: TextButton(
                    onPressed: () {
                      scenario.userActionSequence.add(UserActionController()
                          .getUserAction(
                              PairController().getCurrentActionId(ids[1])));
                      if (PairController().getNextActionId(ids[1]) ==
                          'result') {
                        print('uaScore => ${scenario.userActionSequence}');
                        Get.to(ClassBuilder.fromString(PairController()
                            .getNextActionWidget(widget.sid, ids[1])));
                      } else {
                        setState(() {
                          messageList += [
                            ids[1],
                            PairController().getNextActionId(ids[1])
                          ];
                        });
                      }
                      ;
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    child: Text(AppContentsController().getContents(ids[1]),
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                        textAlign: TextAlign.center),
                  )),
              SizedBox(height: 23.h),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      color: const Color(0xfff8f8f8)),
                  child: TextButton(
                    onPressed: () {
                      scenario.userActionSequence.add(UserActionController()
                          .getUserAction(
                              PairController().getCurrentActionId(ids[2])));
                      if (PairController().getNextActionId(ids[2]) ==
                          'result') {
                        print('uaScore => ${scenario.userActionSequence}');
                        Get.to(ClassBuilder.fromString(PairController()
                            .getNextActionWidget(widget.sid, ids[2])));
                      } else {
                        setState(() {
                          messageList += [
                            ids[2],
                            PairController().getNextActionId(ids[2])
                          ];
                        });
                      }
                      ;
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    child: Text(AppContentsController().getContents(ids[2]),
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0),
                        textAlign: TextAlign.center),
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
