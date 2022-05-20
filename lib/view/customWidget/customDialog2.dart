// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/AppActionController.dart';
import 'package:voskat/controller/AppContentsController.dart';
import 'package:voskat/controller/PairController.dart';
import 'package:voskat/controller/UserActionController.dart';
import 'package:voskat/model/simulation/scenario.dart';
import 'package:voskat/tempData/appContentsData.dart';
import 'package:voskat/tempData/userActionData.dart';
import 'package:get/get.dart';

import 'package:voskat/view/customWidget/A3/A3bPage.dart';
import 'package:voskat/model/simulation/userAction.dart';
import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/controller/AppContentsController.dart';
import 'package:voskat/controller/customDialogController.dart';

import 'A3/A3cPage.dart';

class CustomDialog2 extends StatefulWidget {
  final String sid;
  final String aid;
  final double height;

  const CustomDialog2(
      {Key? key, required this.sid, required this.aid, required this.height})
      : super(key: key);

  @override
  _CustomDialog2State createState() => _CustomDialog2State();
}

class _CustomDialog2State extends State<CustomDialog2> {
  @override
  void initState() {
    super.initState();

    if(widget.aid == 'A0-a'){
      ClassBuilder.register<CustomDialog2>(() => CustomDialog2(
        sid: widget.sid,
        aid: 'A1-b',
        height: 160,
      ));
    } else if(widget.aid == 'A1-b'){
      ClassBuilder.register<CustomDialog2>(() => CustomDialog2(
        sid: widget.sid,
        aid: 'A2-c',
        height: 160,
      ));
    }else if(widget.aid == 'A2-c'){
      ClassBuilder.register<CustomDialog2>(() => CustomDialog2(
        sid: widget.sid,
        aid: 'A2-d',
        height: 160,
      ));
    }

    ClassBuilder.register<A3bPage>(() => A3bPage(
          sid: widget.sid,
        ));
    ClassBuilder.register<A3cPage>(() => A3cPage(
          sid: widget.sid,
        ));
  }

  @override
  Widget build(BuildContext context) {
    var scenario = ScenarioController().getScenario(widget.sid);
    var ids = AppContentsController().getAppContentIds(widget.aid);
    List<String> tmpids = [ids[0], ids[1]];

    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 681 - widget.height),
            child: Dialog(
                // insetPadding: EdgeInsets.only(bottom: 300.h,),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Container(
                    width: 251,
                    height: widget.height,
                    padding: EdgeInsets.only(
                      top: 19,
                      left: 21,
                      right: 21,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          DialogControll(scenario, tmpids),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Select(context, scenario, ids[2]),
                                Select(context, scenario, ids[3]),
                              ])
                        ])))));
  }
}
