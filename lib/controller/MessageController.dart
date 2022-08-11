// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/tempData/appContentsData.dart';

class MessageController extends GetxController {
  getMessageIdList(String sid) {
    List<String> ac_id_list = [];

    for (int i = 0; i < appContentsList.length; i++) {
      if (appContentsList[i].c_type == "messageText" ||
          appContentsList[i].c_type == "messageUrl") {
        if (appContentsList[i].sid == sid) {
          ac_id_list.add(appContentsList[i].ac_id);
        }
      }
    }
    if (ac_id_list.isEmpty) {
      print("getMessageIdList => isEmpty !!");
    }

    return ac_id_list;
  }
}
