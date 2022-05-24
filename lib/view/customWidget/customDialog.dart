// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:voskat/controller/AppContentsController.dart';
import 'package:voskat/controller/PairController.dart';

import 'package:voskat/view/customWidget/A3/ReportPage.dart';
import 'package:voskat/model/simulation/userAction.dart';

import 'package:voskat/controller/ScenarioController.dart';
import 'package:voskat/view/customWidget/customDialogTemplate.dart';

import 'A3/MessagePage.dart';

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

    // if(widget.aid == 'A0-a'){
    //   ClassBuilder.register<CustomDialog>(() => CustomDialog(
    //     sid: widget.sid,
    //     aid: 'A1-b',
    //     height: 160,
    //   ));
    // } else if(widget.aid == 'A1-b'){
    //   ClassBuilder.register<CustomDialog>(() => CustomDialog(
    //     sid: widget.sid,
    //     aid: 'A2-c',
    //     height: 160,
    //   ));
    // }else if(widget.aid == 'A2-c'){
    //   ClassBuilder.register<CustomDialog>(() => CustomDialog(
    //     sid: widget.sid,
    //     aid: 'A2-d',
    //     height: 160,
    //   ));
    // }

    ClassBuilder.register<CustomDialog>(() => CustomDialog(
          sid: widget.sid,
          aid: PairController().getNextActionId(
              AppContentsController().getContentId(widget.aid)),
          height: 180,
        ));

    ClassBuilder.register<ReportPage>(() => ReportPage(
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
