// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:PhishingKatPlus/model/simulation/scenarioType.dart';
import 'package:PhishingKatPlus/tempData/scenarioTypeData.dart';

class ScenarioTypeController extends GetxController {

  getScenarioType(String subtype) {
    late ScenarioType scenarioType;

    for (int i = 0; i < scenarioTypeList.length; i++) {
      if (scenarioTypeList[i].subtype == subtype) {
        scenarioType = scenarioTypeList[i];
      }
    }
    return scenarioType;
  }

  getWidget(ScenarioType type){
    for (int i = 0; i < scenarioTypeList.length; i++) {
      if (scenarioTypeList[i].subtype == type) {
        return scenarioTypeList[i].widget;
      }
    }
  }

  getMedalImage(int medal){
    if(medal == 0){
      return 'image/medalBronze.png';
    }
    else if (medal == 1){
      return 'image/medalBronze.png';
    }else if (medal == 2){
      return 'image/medalSilver.png';
    }else if (medal == 3){
      return 'image/medalGold.png';
    }
    else{
      print('[ERROR] medal');
    }
  }

  getActiveIcon(String subtype) {
    late String activie_icon;

    for (int i = 0; i < scenarioTypeList.length; i++) {
      if (scenarioTypeList[i].subtype == subtype) {
        activie_icon = scenarioTypeList[i].icon_active;
      }
    }
    return activie_icon;

  }



}