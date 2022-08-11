// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/userAction.dart';
import 'package:PhishingKatPlus/tempData/userActionData.dart';

class UserActionController extends GetxController {

  getUserAction(String ua_id) {
    for(int i = 0; i < userActionList.length; i++) {
      if (userActionList[i].ua_id == ua_id) {
        return userActionList[i];
      }
    }

  }
}