// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/appContentsDB.dart';
import 'package:voskat/tempData/appContentsData.dart';

class MessageControllerDB extends GetxController {
  getMessageIdList(List<AppContentsDB> appContentsDB, String sid) {
    List<String> ac_id_list = [];

    for (int i = 0; i < appContentsDB.length; i++) {
      if (appContentsDB[i].ctype == "messageText" ||
          appContentsDB[i].ctype == "messageUrl") {
        if (appContentsDB[i].sid == sid) {
          ac_id_list.add(appContentsDB[i].acid);
        }
      }
    }
    if (ac_id_list.isEmpty) {
      print("getMessageIdList => isEmpty !!");
    }

    return ac_id_list;
  }
}
