// ignore_for_file: file_names

import 'package:class_builder/class_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:PhishingKatPlus/controller/AppContentsController.dart';
import 'package:PhishingKatPlus/controller/PairController.dart';
import 'package:PhishingKatPlus/controller/UserActionController.dart';
import 'package:PhishingKatPlus/model/simulation/scenario.dart';
import 'package:PhishingKatPlus/view/customWidget/customDialog.dart';

Widget customDialogTemplate(Scenario scenario, List<String> ac_id_list) {
  print(ac_id_list);

  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < ac_id_list.length; i++)
          _customDialogTemplate(AppContentsController().getContentsType(ac_id_list[i]),
              scenario, ac_id_list[i])
      ]);
}

Widget _customDialogTemplate(String c_type, Scenario scenario, String ac_id) {
  if (c_type == 'title') {
    return getTitle(ac_id);
  } else if (c_type == 'description') {
    return getDescription(ac_id);
  } else if (c_type == 'image') {
    return getImage(ac_id);
  } else if (c_type == 'decoration') {
    return getDescription(ac_id);
  } else {
    return Text('[ERROR] - DialogControll()');
  }
}

Widget getTitle(String ac_id) {
  return Container(
    height: 38,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppContentsController().getContents(ac_id),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
}

Widget getImage(String ac_id) {
  return Container(
    width: 70,
    height: 25,
    child: Image.asset(AppContentsController().getContents(ac_id),
        fit: BoxFit.fitWidth),
  );
}

Widget getDescription(String ac_id) {
  return Container(
    width: 209,
    padding: EdgeInsets.only(bottom: 13),
    child: Text(
      AppContentsController().getContents(ac_id),
      style: TextStyle(
        fontSize: 13,
      ),
    ),
  );
}

Widget Select(BuildContext context, Scenario scenario, String ac_id) {
  var c_type = AppContentsController().getContentsType(ac_id);

  Color box_color = Color(0xffe7e7e7),
      border_color = Color(0xffb1aeae),
      text_color = Color(0xff000000),
      state_color = Color(0xffe7e7e7);

  if (c_type == 'accept') {
    box_color = Color(0xff0473e1);
    border_color = Color(0xff0473e1);
    text_color = Color(0xffffffff);
    state_color = Color(0xff052b50);
  }

  return Container(
      width: 89,
      height: 26,
      decoration: BoxDecoration(
          color: box_color,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: border_color, width: 1)),
      child: TextButton(
          child: Text(
            AppContentsController().getContents(ac_id),
            style: TextStyle(color: text_color, fontSize: 12),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.only(bottom: 1)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            overlayColor:
                MaterialStateColor.resolveWith((states) => state_color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
          onPressed: () {
            print('ac_id => $ac_id');
            print('nextaction => ${PairController().getNextActionId(ac_id)}');

            scenario.userActionSequence.add(UserActionController()
                .getUserAction(PairController().getCurrentActionId(ac_id)));

            print('useraction => ${PairController().getCurrentActionId(ac_id)}');

            print(
                'ClassBuilder.fromString => ${ClassBuilder.fromString(PairController().getNextActionWidget(scenario.sid, ac_id))}');

            Get.to(ClassBuilder.fromString(
                PairController().getNextActionWidget(scenario.sid, ac_id)));
          }));
}
