// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/appPage.dart';
import 'package:voskat/tempData/appPageData.dart';

class AppPageController extends GetxController {
  getWidget(String aid) {
    for (int i = 0; i < appPageList.length; i++) {
      if (appPageList[i].ap_id == aid) {
        print('[AppActionController]getWidget - widget: ${appPageList[i].widget}');
        return appPageList[i].widget;
      }
    }
  }
}
