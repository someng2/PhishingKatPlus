// ignore_for_file: file_names

import 'dart:io';

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/src/provider.dart';
import 'package:PhishingKatPlus/controller/AppContentsControllerDB.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/controller/UserActionController.dart';
import 'package:PhishingKatPlus/controller/appContents_state.dart';
import 'package:PhishingKatPlus/model/simulation/appContentsDB.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/view/Simulation/SimulationResultPage.dart';

import 'package:PhishingKatPlus/controller/PairController.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';

import '../viewModel/appContents_view_model.dart';

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

  var _state = AppContentsState();
  AppContentsState get state => _state;

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

    return Container();
    // final viewModel = context.watch<AppContentsViewModel>();
    // final state = viewModel.state;
    // List<AppContentsDB> appContentsDBList = state.appContentsDB;
    //
    // var ids = AppContentsControllerDB().getAppContentIds(appContentsDBList, messageList.last);
    // Scenario scenario = _scenarioController.getScenario(widget.sid);
    // messageList.remove(messageList.last);
    // messageList.add(ids[0]);
    //
    // return Scaffold(
    //   appBar: AppBar(
    //     leading: TextButton(
    //       child: Icon(
    //         Icons.navigate_before,
    //         color: Colors.black,
    //       ),
    //       onPressed: () {
    //         Get.back();
    //       },
    //       style: TextButton.styleFrom(
    //         minimumSize: Size.zero,
    //         padding: EdgeInsets.zero,
    //         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //       ),
    //     ),
    //     backgroundColor: Color(0xffffffff),
    //     elevation: 0,
    //     title: Text('010-6808-4045',
    //         style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 15.sp,
    //             fontWeight: FontWeight.w400)),
    //     titleSpacing: 0,
    //     actions: [
    //       Container(
    //         width: 18.w,
    //         child: TextButton(
    //           child: Icon(
    //             Icons.phone,
    //             color: Colors.black,
    //           ),
    //           onPressed: () {},
    //           style: TextButton.styleFrom(
    //             minimumSize: Size.zero,
    //             padding: EdgeInsets.zero,
    //             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //           ),
    //         ),
    //       ),
    //       SizedBox(width: 20.w),
    //       Container(
    //         width: 21.w,
    //         child: TextButton(
    //           child: Image.asset('image/reportIcon.png'),
    //           onPressed: () {},
    //           style: TextButton.styleFrom(
    //             minimumSize: Size.zero,
    //             padding: EdgeInsets.zero,
    //             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //           ),
    //         ),
    //       ),
    //       SizedBox(width: 20.w),
    //       Container(
    //           width: 19.w,
    //           // height: 15.h,
    //           padding: EdgeInsets.only(
    //             bottom: 6.h,
    //             top: 5.h,
    //           ),
    //           child: TextButton(
    //             child: Image.asset('image/menu.png'),
    //             onPressed: () {},
    //             style: TextButton.styleFrom(
    //               minimumSize: Size.zero,
    //               padding: EdgeInsets.zero,
    //               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //             ),
    //           )),
    //       SizedBox(width: 15.w),
    //     ],
    //   ),
    //   body: SingleChildScrollView(
    //     child: Stack(
    //       children:[ Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Container(
    //             height: 412.h,
    //             child: ListView.builder(
    //               controller: _scrollController,
    //               itemBuilder: (context, position) {
    //                 return GestureDetector(
    //                   child: Card(
    //                       elevation: 0,
    //                       child: (AppContentsControllerDB()
    //                                   .getContentsType(appContentsDBList, messageList[position]) ==
    //                               'Ytext')
    //                           ? Row(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 Container(
    //                                     child: Image.asset(
    //                                         'image/messageProfile.png',
    //                                         width: 45.w)),
    //                                 SizedBox(width: 5.w,
    //                                     child: const DecoratedBox(
    //                                     decoration: const BoxDecoration(
    //                                     color: Color(0xffffffff)),)
    //                                 ),
    //                                 Row(
    //                                   crossAxisAlignment: CrossAxisAlignment.end,
    //                                   children: [
    //                                     Container(
    //                                       width: 235.w,
    //                                       padding: EdgeInsets.all(10.sp),
    //                                       decoration: BoxDecoration(
    //                                           color: const Color(0xffa1a1a1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10.sp)),
    //                                       child: Text(
    //                                         AppContentsControllerDB()
    //                                             .getContents(appContentsDBList, messageList[position]),
    //                                         style: TextStyle(
    //                                             color: const Color(0xffffffff),
    //                                             fontWeight: FontWeight.w400,
    //                                             fontFamily: "NotoSansCJKKR",
    //                                             fontStyle: FontStyle.normal,
    //                                             fontSize: 13.sp),
    //                                       ),
    //                                     ),
    //                                     Container(
    //                                       // width: 50,
    //                                       child: Text('오후 2:08',
    //                                           style: TextStyle(
    //                                               fontSize: 11.sp,
    //                                               color: Colors.black
    //                                                   .withOpacity(0.6))),
    //                                       padding:
    //                                           EdgeInsets.only(bottom: 5, left: 10),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ],
    //                             )
    //                           : Row(
    //                               mainAxisAlignment: MainAxisAlignment.end,
    //                               children: [
    //                                 Row(
    //                                   crossAxisAlignment: CrossAxisAlignment.end,
    //                                   children: [
    //                                     Container(
    //                                       padding: EdgeInsets.all(10.sp),
    //                                       decoration: BoxDecoration(
    //                                           color: const Color(0xffa1a1a1),
    //                                           borderRadius:
    //                                               BorderRadius.circular(10.sp)),
    //                                       child: Column(
    //                                         crossAxisAlignment:
    //                                             CrossAxisAlignment.start,
    //                                         children: [
    //                                           Text(
    //                                             AppContentsControllerDB().getContents(
    //                                                 appContentsDBList, messageList[position]),
    //                                             style: TextStyle(
    //                                                 color: const Color(0xffffffff),
    //                                                 fontWeight: FontWeight.w400,
    //                                                 fontFamily: "NotoSansCJKKR",
    //                                                 fontStyle: FontStyle.normal,
    //                                                 fontSize: 13.sp),
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             )),
    //                 );
    //               },
    //               itemCount: messageList.length,
    //             ),
    //           ),
    //           Container(
    //             width: 360.w,
    //             height: 196.h,
    //             decoration: BoxDecoration(color: const Color(0xff818181)),
    //             child: Column(children: [
    //               SizedBox(height: 39.5.h),
    //               // SizedBox(height: 25.h),
    //               Container(
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.all(Radius.circular(7)),
    //                       color: const Color(0xfff8f8f8)),
    //                   child: TextButton(
    //                     onPressed: () {
    //                       scenario.userActionSequence.add(UserActionController()
    //                           .getUserAction(
    //                               PairController().getCurrentActionId(ids[1])));
    //                       if (PairController().getNextActionId(ids[1]) ==
    //                           'result') {
    //                         print('uaScore => ${scenario.userActionSequence}');
    //                         Get.to(ClassBuilder.fromString(PairController()
    //                             .getNextActionWidget(widget.sid, ids[1])));
    //                       } else {
    //                         setState(() {
    //                           messageList += [
    //                             ids[1],
    //                             PairController().getNextActionId(ids[1])
    //                           ];
    //                         });
    //                       }
    //                       ;
    //                       _scrollController.animateTo(
    //                         _scrollController.position.maxScrollExtent,
    //                         curve: Curves.easeOut,
    //                         duration: const Duration(milliseconds: 300),
    //                       );
    //                     },
    //                     child: Text(AppContentsControllerDB().getContents(appContentsDBList, ids[1]),
    //                         style: TextStyle(
    //                             color: const Color(0xff000000),
    //                             fontWeight: FontWeight.w400,
    //                             fontFamily: "NotoSansCJKKR",
    //                             fontStyle: FontStyle.normal,
    //                             fontSize: 15.sp),
    //                         textAlign: TextAlign.center),
    //                   )),
    //               // SizedBox(height: 23.h),
    //               SizedBox(height: 15.h),
    //               Container(
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.all(Radius.circular(9)),
    //                       color: const Color(0xfff8f8f8)),
    //                   child: TextButton(
    //                     onPressed: () {
    //                       scenario.userActionSequence.add(UserActionController()
    //                           .getUserAction(
    //                               PairController().getCurrentActionId(ids[2])));
    //                       if (PairController().getNextActionId(ids[2]) ==
    //                           'result') {
    //                         print('uaScore => ${scenario.userActionSequence}');
    //                         Get.to(ClassBuilder.fromString(PairController()
    //                             .getNextActionWidget(widget.sid, ids[2])));
    //                       } else {
    //                         setState(() {
    //                           messageList += [
    //                             ids[2],
    //                             PairController().getNextActionId(ids[2])
    //                           ];
    //                         });
    //                       }
    //                       ;
    //                       _scrollController.animateTo(
    //                         _scrollController.position.maxScrollExtent,
    //                         curve: Curves.easeOut,
    //                         duration: const Duration(milliseconds: 300),
    //                       );
    //                     },
    //                     child: Text(AppContentsControllerDB().getContents(appContentsDBList, ids[2]),
    //                         style: TextStyle(
    //                             color: const Color(0xff000000),
    //                             fontWeight: FontWeight.w400,
    //                             fontFamily: "NotoSansCJKKR",
    //                             fontStyle: FontStyle.normal,
    //                             fontSize: 15.sp),
    //                         textAlign: TextAlign.center),
    //                   )),
    //             ]),
    //           ),
    //         ],
    //       ),
    //     ]
    //     ),
    //   ),
    // );
  }
}
