// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:voskat/model/simulation/appAction.dart';
import 'package:voskat/tempData/appActionData.dart';

class AppActionController extends GetxController {
  getWidget(String aid) {
    for (int i = 0; i < appActionList.length; i++) {
      if (appActionList[i].ap_id == aid) {
        print('getWidget - widget: ${appActionList[i].widget}');
        return appActionList[i].widget;
      }
    }
  }
}
