// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/appPage.dart';
import 'package:voskat/model/simulation/appPageDB.dart';
import 'package:voskat/tempData/appPageData.dart';

class AppPageControllerDB extends GetxController {
  getWidget(List<AppPageDB> appPageDB, String aid) {
    for (int i = 0; i < appPageDB.length; i++) {
      if (appPageDB[i].apid == aid) {
        print('[AppActionController]getWidget - widget: ${appPageList[i].widget}');
        return appPageDB[i].widget;
      }
    }
  }
}
