// ignore_for_file: file_names

import 'package:get/get.dart';

import 'package:voskat/model/simulation/pair.dart';
import 'package:voskat/model/simulation/appContents.dart';
import 'package:voskat/model/simulation/contentsList.dart';
import 'package:voskat/controller/AppActionController.dart';

import 'package:voskat/tempData/appContentsData.dart';
import 'package:voskat/tempData/appPageData.dart';
import 'package:voskat/tempData/pairData.dart';

class PairController extends GetxController {
  getCurrentActionId(String ac_id) {
    for (int i = 0; i < pairList.length; i++) {
      if (pairList[i].ac_id == ac_id) {
        // print('getCurrentActionId => ${pairList[i].currentActionId}');
        return pairList[i].currentActionId;
      }
    }
  }

  getNextActionId(String ac_id) {
    for (int i = 0; i < pairList.length; i++) {
      if (pairList[i].ac_id == ac_id) {
        print('getNextActionId => ${pairList[i].nextActionId}');
        return pairList[i].nextActionId;
      }
    }
  }


  getNextActionWidget(String sid, String ac_id) {
    for (int i = 0; i < pairList.length; i++) {
      if (
      pairList[i].sid == sid &&
          pairList[i].ac_id == ac_id) {
              print('sid = $sid');
        print('[PairController] getNextActionWidget - nextActionID : ${pairList[i].nextActionId}');
        print(
            '[PairController] getNextWidget - getWidget() => ${AppActionController().getWidget(pairList[i].nextActionId)}');
        return AppActionController().getWidget(pairList[i].nextActionId);
      }
    }
  }

  getIndex(String ac_id) {
    for (int i = 0; i < pairList.length; i++) {
      if (pairList[i].ac_id == ac_id) {
        print('getIndex => ${pairList[i].index}');
        return pairList[i].index;
      }
    }
  }
}
