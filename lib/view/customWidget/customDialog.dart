// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/controller/PairController.dart';

import 'package:PhishingKatPlus/view/customWidget/A3/ReportPage.dart';
import 'package:PhishingKatPlus/model/simulation/userAction.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/view/customWidget/customDialogTemplate.dart';
import 'A3/MessagePage.dart';
import 'package:PhishingKatPlus/controller/ScenarioController.dart';
import 'package:PhishingKatPlus/view/customWidget/customDialogTemplate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDialog extends StatefulWidget {
  final String sid;
  final String aid;
  final double height;

  const CustomDialog(
      {Key? key, required this.sid, required this.aid, required this.height})
      : super(key: key);

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  void initState() {
    super.initState();

    ClassBuilder.register<CustomDialog>(() => CustomDialog(
          sid: widget.sid,
          aid: PairController().getNextActionId(
              AppContentsController().getContentId(widget.aid)),
          height: 180,
        ));

    ClassBuilder.register<ReportCallPage>(() => ReportCallPage(
          sid: widget.sid,
        ));
    ClassBuilder.register<MessagePage>(() => MessagePage(
          sid: widget.sid,
        ));
  }

  @override
  Widget build(BuildContext context) {
    var scenario = ScenarioController().getScenario(widget.sid);
    var ids = AppContentsController().getAppContentIds(widget.aid);
    String cancel = '';
    String accept = '';

    for (int i = 0; i < ids.length; i++) {
      if (AppContentsController().getContentsType(ids[i]) == 'cancel') {
        cancel = ids[i];
        ids.remove(ids[i]);
        i--;
      } else if (AppContentsController().getContentsType(ids[i]) == 'accept') {
        accept = ids[i];
        ids.remove(ids[i]);
        i--;
      } else
        continue;

    }

    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 670.h - widget.height),
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
                          customDialogTemplate(scenario, ids),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Select(context, scenario, cancel),
                                Select(context, scenario, accept),
                              ])
                        ])))));
  }
}
