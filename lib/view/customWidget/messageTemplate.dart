// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voskat/controller/AppContentsController.dart';
import 'package:voskat/controller/PairController.dart';
import 'package:voskat/controller/UserActionController.dart';
import 'package:get/get.dart';
import 'package:voskat/model/simulation/scenario.dart';

// TODO: ac_id 통일해서 order 대로 column 안에 출력

Widget MessageTemplate(Scenario scenario, List<String> ac_id_list) {
  return Container(
      // width: 255.w,
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
          color: Color(0xffC4C4C4).withOpacity(0.28),
          borderRadius: BorderRadius.circular(10.sp)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (int i = 0; i < ac_id_list.length; i++)
              _MessageTemplate(
                  AppContentsController().getContentsType(ac_id_list[i]),
                  scenario,
                  ac_id_list[i])
          ]));
}

Widget _MessageTemplate(String c_type, Scenario scenario, String ac_id) {
  if (c_type == 'messageText') {
    return MessageText(ac_id);
  } else if (c_type == 'messageUrl') {
    return MessageUrl(scenario, ac_id);
  } else {
    return Text('[ERROR] - _MessageTemplate()');
  }
}

Widget MessageText(String ac_id) {
  return Text(AppContentsController().getContents(ac_id),
      style: TextStyle(fontSize: 14.sp));
}

Widget MessageUrl(Scenario scenario, String ac_id) {
  return Container(
      height: 20.h,
      child: TextButton(
        child: Text(
          // scenario.appActionSequence[0].url,
          AppContentsController().getContents(ac_id),
          style: TextStyle(
              color: Colors.indigo,
              decoration: TextDecoration.underline,
              fontSize: 14.sp),
        ),

        // U1
        onPressed: () {
          // Get.to(
          //     (scenario.appActionSequence[1].widget));

          // Get.to(U1_a.nextAction);
          print(
              'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(scenario.sid, ac_id))}');

          Get.to(ClassBuilder.fromString(
              PairController().getNextActionWidget(scenario.sid, ac_id)));

          scenario.userActionSequence.add(UserActionController()
              .getUserAction(PairController().getCurrentActionId(ac_id)));
        },
        style: TextButton.styleFrom(
          // backgroundColor: Colors.white,
          // padding: EdgeInsets.all(0))
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ));
}
