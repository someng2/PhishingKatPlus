// ignore_for_file: file_names

import 'package:get/get.dart';

import 'package:PhishingKatPlus/controller/AppPageController.dart';
import 'package:PhishingKatPlus/model/simulation/pairDB.dart';
import 'package:PhishingKatPlus/tempData/pairData.dart';

class PairControllerDB extends GetxController {
  getCurrentActionId(List<PairDB> pairDB, String ac_id) {
    for (int i = 0; i < pairDB.length; i++) {
      if (pairDB[i].acid == ac_id) {
        // print('getCurrentActionId => ${pairDB[i].currentActionId}');
        return pairDB[i].currentActionId;
      }
    }
  }

  getNextActionId(List<PairDB> pairDB, String ac_id) {
    for (int i = 0; i < pairDB.length; i++) {
      if (pairDB[i].acid == ac_id) {
        print('getNextActionId => ${pairDB[i].nextActionId}');
        return pairDB[i].nextActionId;
      }
    }
  }


  getNextActionWidget(List<PairDB> pairDB, String sid, String ac_id) {
    for (int i = 0; i < pairDB.length; i++) {
      if (
      pairDB[i].sid == sid &&
          pairDB[i].acid == ac_id) {
        print('sid = $sid');
        print('[PairController] getNextActionWidget - nextActionID : ${pairDB[i].nextActionId}');
        print(
            'getNextWidget - getWidget() => ${AppPageController().getWidget(pairDB[i].nextActionId)}');
        return AppPageController().getWidget(pairDB[i].nextActionId);
      }
    }
  }

  getIndex(List<PairDB> pairDB, String ac_id) {
    for (int i = 0; i < pairDB.length; i++) {
      if (pairDB[i].acid == ac_id) {
        print('getIndex => ${pairDB[i].index}');
        return pairDB[i].index;
      }
    }
  }
}
